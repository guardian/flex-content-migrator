package controllers.migration

import model._
import play.api.Logger
import play.api.mvc.{Action, Result, Controller}
import services.{FlexArticleMigrationServiceImpl, FlexContentMigrationService}
import services.migration.{ArticleMigrator, Migrator}

import scala.concurrent.Future


object ArticleMigrationApi extends ArticleMigrationApi(ArticleMigrator, ArticleMigrationTextReport, FlexArticleMigrationServiceImpl)

class ArticleMigrationApi(migrator : Migrator, reporter : MigrationReport, flex : FlexContentMigrationService) extends Controller{

  import play.api.libs.concurrent.Execution.Implicits.defaultContext


  private def withMigrationPermission(migration : () => Future[Result]) : Future[Result] = {
    import featureswitches.FlexR2FeatureSwitch._
    if(!allowArticleMigrationToFlex){
      val msg = "Attempt to migrate Article to flex: this feature is forbidden"
      Logger.error(msg)
      Future{InternalServerError(msg)}
    }
    else migration()
  }

  def checkFlexConnection = Action.async{ request => {
    Logger.debug("checkFlexConnection")
    flex.doConnectivityCheck.map(response => Ok(response))
  }}

  def migrateBatch(batchSize : Option[Int], batchNumber : Option[Int] ) = Action.async{ block => {
    Logger.debug(s"migrateBatch ${batchSize} ${batchNumber}")
    withMigrationPermission{ () =>
      migrator.migrateBatchOfContent(batchSize, batchNumber).map(reportMigratedBatch(_))
    }
  }
  }

  def migrateArticle(audioId : Int) =  Action.async{ block => {
    Logger.debug(s"migrateArticle ${audioId}")
    withMigrationPermission{ () =>
      migrator.migrateIndividualContent(audioId).map(reportSingleArticle(_))
    }
  }
  }

  private def reportSingleArticle(audio : MigratedContent) = {
    Ok(reporter.reportSingleContent(audio))
  }

  private def reportMigratedBatch(batch : MigratedBatch) = {
    Ok(reporter.reportMigratedBatch(batch))
  }
}


object ArticleMigrationTextReport extends MigrationReport{

  private def getTruncatedReason(reason : String) ={
    val MaxLengthBody = 600
    if(reason.length<MaxLengthBody) reason
    else reason.substring(0, MaxLengthBody-1)
  }

  private def reportFailure(migratedArticle : MigrationFailedContent) =
    s"""---Failed Article---
        |Failed Article ID: ${migratedArticle.id}
        |Reason:
        |${getTruncatedReason(migratedArticle.reason)}
        |
        |-----------------""".stripMargin

  private def reportSuccesses(migrated : Seq[MigratedContent]) =
    migrated.map(migrated => s"${migrated.id} -> ${migrated.composerId}").mkString("\n")


  def reportSingleContent(audio : ContentMigrationResult) : String = {

    if(audio.wasSuccess) {
      val migratedArticle = audio.asInstanceOf[MigratedContent]
      s"Article ${migratedArticle.id} migrated successfully: ${migratedArticle.composerId}"
    }
    else {
      val failed = audio.asInstanceOf[MigrationFailedContent]
      reportFailure(failed)
    }
  }

  override def reportMigratedBatch(batch : MigratedBatch) = {
    def batchFailureReport =
      s"Details:\n${reportSuccesses(batch.migrated)}\n\n${batch.failed.map(reportFailure(_) + "\n\n").mkString("\n")}"
    
    s"Batch Success Articles = ${batch.migrated.size}, Failed Articles = ${batch.failed.size} \n${batchFailureReport}"
  }
}
