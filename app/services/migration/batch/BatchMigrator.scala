package services.migration.batch

import java.util.UUID

import akka.actor._
import model._
import play.Logger
import services.migration.batch.AkkaBatchMigratorMessages._
import services.migration._
import services.migration.r2.R2MigrationService
import scala.concurrent.Future
import akka.util.Timeout
import scala.concurrent.duration._




protected[migration] trait BatchMigrator{
  def migrateBatch(migrationBehaviour : MigrationBehaviour)
                  (params : MigrationBatchParams): Future[MigratedBatch]

}

protected[migration] object SimpleBatchMigrator extends BatchMigrator{
  override def migrateBatch(migrationBehaviour : MigrationBehaviour)
                           (params : MigrationBatchParams): Future[MigratedBatch] = {
    import play.api.libs.concurrent.Execution.Implicits._

    def pushContentInFlex(batch : MigrationBatch) : Future[Seq[ContentInFlex]]= {
      Future.sequence(batch.sourceContent.map(migrationBehaviour.contentTransform(_)).map(migrationBehaviour.pushToFlex(_)))
    }

    def migrateContentsInR2(contentInFlex : Seq[ContentInFlex] ) =
      Future.sequence(contentInFlex.map(video => migrationBehaviour.closeContentInSource(video)))


    val sourceContent = migrationBehaviour.contentLoader.loadBatchOfContent(params.batchSize, params.batchNumber, params.tagIds, params.withIdsHigherThan)
    val videosInFlex = sourceContent.flatMap(pushContentInFlex(_))
    val videosInR2 = videosInFlex.flatMap(migrateContentsInR2(_))
    videosInR2.map{ results => {
        val resultsSplit = MigrateContentInR2.splitResults(results)
        MigratedBatch(resultsSplit._1, resultsSplit._2)
      }
    }
  }


}

protected[migration] object AkkaBatchMigrator extends BatchMigrator{


  def migrateBatch(migrationBehaviour : MigrationBehaviour)
                   (params : MigrationBatchParams ): Future[MigratedBatch] = {
    import AkkaBatchMigratorMessages._
    import akka.pattern.ask
    import scala.language.postfixOps

    def batchMigrationOrchestrator(id: String, system : ActorSystem) = {
      system.actorOf( Props(classOf[AkkaBatchMigratorOrchestrator],
                            migrationBehaviour,
                            id, params))
    }

    withActorSystem{ (id : String , system : ActorSystem) => {
        val akkaBatchMigrator = batchMigrationOrchestrator(id, system)
        implicit val timeout: Timeout = Timeout(250 seconds)
        val migrationResults =
            (akkaBatchMigrator ? PerformMigrationMsg(id)).
              fallbackTo {
                //Batch  did not report back - attempting to retrieve the current status of the batch as a final report
                (akkaBatchMigrator ? GetCurrentStatusMsg(id))
              }
        migrationResults.asInstanceOf[Future[MigratedBatch]]
    }}

  }

  private def withActorSystem(fn : (String, ActorSystem) => Future[MigratedBatch]) : Future[MigratedBatch] = {
    import scala.concurrent.ExecutionContext.Implicits.global
    val id = migrationBatchId
    val actorSys = actorSystem(id)
    val startTime = System.currentTimeMillis()
    val future = fn(id, actorSys)
    future.onComplete(x => {
      shutdownActorSystem(id, actorSys, startTime)
    })
    future
  }


  private def actorSystem(id : String) = {
    Logger.info(s"starting actor system for migration batch ${id}")
    ActorSystem(s"migrationBatch_${id}")
  }
  private def shutdownActorSystem(id : String, actorSys : ActorSystem, startTime : Long){
    val elapsedTime = System.currentTimeMillis() - startTime
    System.out.println(s"shutting down actor system for migration batch ${id}. The batch took ${elapsedTime} ms to complete")
    actorSys.shutdown()
  }
  private def migrationBatchId : String = UUID.randomUUID().toString

}

protected[batch] object AkkaBatchMigratorMessages{
  trait MigrationMessage
  case class PerformMigrationMsg(batchId : String) extends MigrationMessage
  case class GetCurrentStatusMsg(batchId : String) extends MigrationMessage
  case class LoadContentR2Msg(batchId : String, contentId : Int, resultsListener : ActorRef) extends MigrationMessage
  case class TransformContentMsg(batchId : String, source : SourceContent, resultsListener : ActorRef) extends MigrationMessage
  case class PushContentToFlexMsg(batchId : String, content : TransformedContent, resultsListener : ActorRef) extends MigrationMessage
  case class MigrateContentInR2Msg(batchId : String, content : ContentInFlex, resultsListener : ActorRef) extends MigrationMessage
  abstract class MigrationResult(val r2Id : Int) extends MigrationMessage{
    def isSuccess : Boolean
    def listener : ActorRef
  }
  case class MigratedContentResultMsg(batchId : String, content : MigratedContent, listener : ActorRef) extends MigrationResult(content.id){
    def isSuccess = true
  }
  case class MigrationErrorResultMsg(batchId : String, override val r2Id : Int, error: String, listener : ActorRef) extends MigrationResult(r2Id){
    def isSuccess = false
  }
}


protected[batch] class AkkaBatchMigratorOrchestrator(migrationBehaviour : MigrationBehaviour, batchId : String, params : MigrationBatchParams) extends Actor {


  import AkkaBatchMigratorMessages._

  var results : List[MigrationResult] = Nil
  var idsInCurrentBatch : List[Int] = Nil

  import scala.concurrent.ExecutionContext.Implicits.global

  context.system.eventStream.subscribe(self, classOf[DeadLetter])


  val actorMigrateInR2 =
    context.system.actorOf(Props(classOf[AkkaBatchMigratorMigrateInR2],
      migrationBehaviour.closeContentInSource, batchId, self))
  val actorPushToFlex =
    context.system.actorOf(Props(classOf[AkkaBatchMigratorPushToFlex],
      migrationBehaviour.pushToFlex, batchId, self, actorMigrateInR2))
  val actorTransform =
    context.system.actorOf(Props(classOf[AkkaBatchMigratorTransformer],
      migrationBehaviour.contentTransform, batchId, self, actorPushToFlex))
  val actorR2Loader =
    context.system.actorOf(Props(classOf[AkkaBatchMigratorR2Loader],
      migrationBehaviour.contentLoader, batchId, self, actorTransform))



  private def percDone = (results.size * 100 ) / params.batchSize


  override def receive: Receive = {
    case performMigrationMsg : PerformMigrationMsg => startMigration(sender())
    case getCurrentStatusMsg : GetCurrentStatusMsg => {
      Logger.warn(s"Sending final status of batch ${batchId} before it properly terminated")
      sendClientResultsNow(sender())
    }
    case result : MigrationResult => processResult(result)
    case deadletter : DeadLetter => processDeadLetter(deadletter)
  }

  private def processDeadLetter(deadLetter : DeadLetter){
    Logger.debug(deadLetter.toString)
  }


  private def processResult(result : MigrationResult){
    results = result :: results
    Logger.debug(s"Result for migration batch ${batchId} - ${percDone} % done");
    sendClientResultsIfDone(result.listener)
  }

  private def sendClientResultsNow(resultsListener : ActorRef): Unit ={
    val successVideos = results.filter(_.isSuccess).map(_.asInstanceOf[MigratedContentResultMsg]).map(_.content)
    val failedVideos = results.filterNot(_.isSuccess).map(_.asInstanceOf[MigrationErrorResultMsg]).map(errorMsg =>
      MigrationFailedContent(errorMsg.r2Id, errorMsg.error))
    if(results.size == params.batchSize){
      Logger.debug(s"sending complete results to  ${resultsListener} : ${successVideos.size} success and ${failedVideos.size} failed")
      resultsListener ! MigratedBatch(successVideos, failedVideos)
    }
    else{
      val knownResults = results.map(_.r2Id)
      val unknown = idsInCurrentBatch.filterNot(knownResults.contains(_))
      Logger.debug(s"sending partial results to  ${resultsListener} : ${successVideos.size} success, ${failedVideos.size} failed, ${unknown.size} unknown")
      //combine the unknown and the explicitly failed into a single count
      val allFailedVideos = unknown.map(MigrationFailedContent(_, "No result received")) ++ failedVideos
      resultsListener ! MigratedBatch(successVideos, allFailedVideos)
    }

  }


  private def sendClientResultsIfDone(resultsListener : ActorRef){
    if(results.size == params.batchSize) sendClientResultsNow(resultsListener)
  }


  private def startMigration(resultsListener : ActorRef) = {
    //TODO: prevent future start requests coming in!
    Logger.debug(s"startMigration")
    val contentIds: Future[List[Int]] = migrationBehaviour.contentLoader.getBatchOfContentIds(params.batchSize, params.batchNumber, params.tagIds, params.withIdsHigherThan)
    contentIds.onSuccess[Unit]{
      case ids : List[Int] => idsInCurrentBatch = ids
    }
    contentIds.map{_.map{ r2ContentId =>
      actorR2Loader ! LoadContentR2Msg(batchId, r2ContentId, resultsListener)
    }}
  }
}

protected[batch] abstract class AkkaBatchMigratorHelper(batchId : String, orchestrator : ActorRef) extends Actor {

  def sendErrorMsg(r2VideoId : Int, msg : String, resultsListener : ActorRef, error : Option[Exception] = None) = {
    error match {
      case Some(e) => {
        Logger.error("Error occured", e)
      }
      case _ => //do nothing
    }
    Logger.error(s"Migration error: contentId:${r2VideoId} msg:${msg}")
    orchestrator ! MigrationErrorResultMsg(batchId, r2VideoId, msg, resultsListener)
  }
}

protected[batch] class AkkaBatchMigratorR2Loader(r2MigrationService : R2MigrationService, batchId : String, orchestrator : ActorRef, nextInChain : ActorRef) extends AkkaBatchMigratorHelper(batchId, orchestrator) {
  import scala.concurrent.ExecutionContext.Implicits.global

  override def receive = {
    case loadVideoMsg: LoadContentR2Msg => loadR2Content(loadVideoMsg, loadVideoMsg.resultsListener)
  }

  private def loadR2Content(loadContentR2 : LoadContentR2Msg, resultsListener : ActorRef){
    Logger.debug(s"loadR2Content ${loadContentR2.contentId}")
    try{
      val loadedContent =
        r2MigrationService.loadContentById(loadContentR2.contentId)
      loadedContent.map(srcContent =>
        nextInChain ! TransformContentMsg(batchId, srcContent, resultsListener)
      ).recover{
        case e: Exception => sendErrorMsg(loadContentR2.contentId, "Failed to load content from r2: " + e.toString, resultsListener, Some(e))
      }
    }
    catch{
      case e : Exception => sendErrorMsg(loadContentR2.contentId, "Failed to load content from r2: " + e.toString, resultsListener, Some(e))
    }
  }
}

protected[batch] class AkkaBatchMigratorTransformer(transformR2ToFlex : TransformR2ToFlex, batchId : String, orchestrator : ActorRef, nextInChain : ActorRef) extends AkkaBatchMigratorHelper(batchId, orchestrator) {
  import scala.concurrent.ExecutionContext.Implicits.global

  override def receive = {
    case transformContentMsg : TransformContentMsg => transformContent(transformContentMsg, transformContentMsg.resultsListener)
  }

  private def transformContent(transform : TransformContentMsg, resultsListener : ActorRef){
    Logger.debug(s"transformContent ${transform.source.id}")
    try{
      val transformedVideo = transformR2ToFlex(transform.source)
      nextInChain ! PushContentToFlexMsg(batchId, transformedVideo, resultsListener)
    }
    catch{
      case e : Exception => sendErrorMsg(transform.source.id, "Failed to transform content:" + e.toString, resultsListener, Some(e))
    }
  }

}

protected[batch] class AkkaBatchMigratorPushToFlex(pushToFlex : PushToFlex, batchId : String, orchestrator : ActorRef, nextInChain : ActorRef) extends AkkaBatchMigratorHelper(batchId, orchestrator) {
  import scala.concurrent.ExecutionContext.Implicits.global

  override def receive = {
    case migrateVideoMsg : PushContentToFlexMsg => pushContentToFlex(migrateVideoMsg, migrateVideoMsg.resultsListener)
  }

  private def pushContentToFlex(migrate : PushContentToFlexMsg, resultsListener : ActorRef){
    Logger.debug(s"pushContentToFlex ${migrate.content.sourceContent.id}")
    try{
      val videoInFlex = pushToFlex(migrate.content)
      videoInFlex.map( videoInFlex =>
        if(videoInFlex.wasSuccess ) {
          Logger.debug(s"Video ${videoInFlex.id} pushed to Flex with composerID=${videoInFlex.composerId} ")
          nextInChain ! MigrateContentInR2Msg(batchId, videoInFlex, resultsListener)
        }
        else{
          sendErrorMsg(migrate.content.sourceContent.id, MigrationFailedContent.failedToPushToFlex(videoInFlex.response), resultsListener)
        }
      ).recover{
        case e: Exception => sendErrorMsg(migrate.content.sourceContent.id, s"Failed to push content into flex: ${e.toString}", resultsListener, Some(e))
      }
    }
    catch{
      case e : Exception => sendErrorMsg(migrate.content.sourceContent.id, s"Failed to push content into flex: ${e.toString}", resultsListener, Some(e))
    }
  }

}

protected[batch] class AkkaBatchMigratorMigrateInR2(migrateVideoInR2 : MigrateContentInR2, batchId : String, orchestrator : ActorRef) extends AkkaBatchMigratorHelper(batchId, orchestrator) {
  import scala.concurrent.ExecutionContext.Implicits.global

  override def receive = {
    case migrateContentMsg : MigrateContentInR2Msg => migrateContentInR2(migrateContentMsg, migrateContentMsg.resultsListener)
  }

  private def migrateContentInR2(migrate : MigrateContentInR2Msg, resultsListener : ActorRef){
    Logger.debug(s"migrateContentInR2 ${migrate.content.id}")
    try{
      migrateVideoInR2(migrate.content).map{ result =>
        result match {
          case ok: MigratedContent => {
            orchestrator ! MigratedContentResultMsg(batchId, ok, resultsListener)
          }
          case problem: MigrationFailedContent => sendErrorMsg(migrate.content.id, s"Failed to migrate content in R2 : ${problem.reason}", resultsListener)
        }
      }.recover{
        case e: Exception => sendErrorMsg(migrate.content.id, s"Failed to migrate content in R2: ${e.toString}", resultsListener, Some(e))
      }
    }
    catch{
      case e : Exception => sendErrorMsg(migrate.content.id, s"Failed to migrate content in R2: ${e.toString}", resultsListener, Some(e))
    }
  }

}




