package services.migration.r2

import model.{MigrationBatch, SourceContent}
import play.Logger
import services.migration.{MigrationBatchParams, ThrottleControl}

import scala.concurrent.Future


abstract class R2QuizMigratorService(client : R2IntegrationAPIClient) extends R2MigrationService {

  import ThrottleControl._
  import play.api.libs.concurrent.Execution.Implicits._

  private def loadContentWithThrottle(id : Integer) = {
    r2ThrottlerFt[SourceContent]{
      client.loadQuizById(id)
    }
  }

  def loadContentById(id : Integer) = loadContentWithThrottle(id)

  def getBatchOfContentIds(params : MigrationBatchParams) ={
    client.getBatchOfQuizIds(params)
  }

  def loadBatchOfContent(params : MigrationBatchParams) : Future[MigrationBatch] = {
    def mapIdsToQuizzes(ids: Future[List[Int]]) = {
      def idsToQuizzes(ids : List[Int]) = ids.map(loadContentWithThrottle(_))

      ids.map{idsToQuizzes(_)}.flatMap(Future.sequence(_))
    }

    val ids = client.getBatchOfGalleryIds(params)
    val quizzes = mapIdsToQuizzes(ids)
    quizzes.map(loadedQuizzes => {
      Logger.info(s"Loaded the batch of ${params.batchSize} quizzes from R2")
      new MigrationBatch(loadedQuizzes)
    })
  }

  def loadIndividualContent(quizId : Int) : Future[SourceContent] = loadContentWithThrottle(quizId)


  def migrateContentInR2(quizId : Int, composerId : String) : Future[(Boolean, String)] = {
    r2ThrottlerFt[(Boolean, String)]{
      client.migrateQuizInR2(quizId, composerId)
    }
  }
}

object R2QuizMigratorServiceImpl extends R2QuizMigratorService(new R2IntegrationAPIClient()){}