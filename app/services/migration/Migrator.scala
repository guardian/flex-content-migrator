package services.migration


import model._
import play.Logger
import services.migration.batch.AkkaBatchMigrator
import services.migration.r2.R2MigrationService
import services.FlexContentMigrationService
import utils.TempFileProcessor
import scala.concurrent.Future

protected[migration] abstract class TransformR2ToFlex(){
  def apply(content : SourceContent) : TransformedContent
}


protected[migration] trait MigrationBehaviour{

  val contentLoader : R2MigrationService
  val contentTransform : TransformR2ToFlex
  val pushToFlex : PushToFlex
  val closeContentInSource : MigrateContentInR2

}


trait Migrator{
  protected val migrationBehaviour : MigrationBehaviour
  protected val migrateBatch = AkkaBatchMigrator.migrateBatch(migrationBehaviour) _

  import play.api.libs.concurrent.Execution.Implicits._


  def migrateBatchOfContent(params : MigrationBatchParams) : Future[MigratedBatch] = migrateBatch(params)


  def migrateIndividualContent(contentId : Int) : Future[ContentMigrationResult] = {
    val loaded = migrationBehaviour.contentLoader.loadContentById(contentId)
    val transformed = loaded.map(migrationBehaviour.contentTransform(_))
    val inFlex = transformed.flatMap(migrationBehaviour.pushToFlex(_))
    val inR2 = inFlex.flatMap(migrationBehaviour.closeContentInSource(_))
    inR2.map{ _ match {
      case result : MigratedContent => result
      case unknown : Any => {
        throw new RuntimeException(s"Migration failed for content ${contentId} : ${unknown}")
      }

    }}

  }
}

object Migrator{
  val DefaultMigrationBatchSize = 50
  val MaxMigrationBatchSize = 2000
}


protected[migration] class PushToFlex(flexContentMigrationService: FlexContentMigrationService, tempFileProcessor : TempFileProcessor){
  import play.api.libs.concurrent.Execution.Implicits._

  def apply(content : TransformedContent) : Future[ContentInFlex] = {
    val id = content.sourceContent.id
    Future {
      tempFileProcessor.createTempFileForXml(content.liveData.xml)
    }.flatMap {
      Logger.debug(s"Importing content ${id} and cmsPath ${content.liveData.xmlCmsPath} into flex...")
      val imported = flexContentMigrationService.migrateContentXml(_)
      Logger.debug(s"...imported content ${id} into flex")
      imported

    }.map{ContentInFlex(id, _)}
  }
}

protected[migration] class MigrateContentInR2(r2ContentMigrator : R2MigrationService){
  import play.api.libs.concurrent.Execution.Implicits._
  def apply(contentInFlex : ContentInFlex) : Future[ContentMigrationResult] = {
    if(contentInFlex.wasSuccess){
      val responseF = r2ContentMigrator.migrateContentInR2(contentInFlex.id, contentInFlex.composerId.get)
      responseF.map{ result => {
        if (result._1) MigratedContent(contentInFlex.id, contentInFlex.composerId.get)
        else MigrationFailedContent(contentInFlex.id, s"Could not migrate content in R2: ${result._2}")
      }} //TODO: need a recover?
    }
    else Future{MigrationFailedContent(contentInFlex.id, s"Could not migrate in R2 as it failed in Flex : ${contentInFlex.response.body}")}
  }

}

object MigrateContentInR2{
  def splitResults(list : Seq[ContentMigrationResult]) : (Seq[MigratedContent], Seq[MigrationFailedContent]) = {
    val success = list.filter(_.wasSuccess).map(_.asInstanceOf[MigratedContent])
    val failed = list.filterNot(_.wasSuccess).map(_.asInstanceOf[MigrationFailedContent])
    (success, failed)
  }
}


