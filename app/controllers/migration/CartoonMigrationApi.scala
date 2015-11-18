package controllers.migration

import model._
import play.api.Logger
import play.api.mvc.{Action, Result, Controller}
import services.{FlexCartoonMigrationServiceImpl, FlexContentMigrationService}
import services.migration.{CartoonMigrator, Migrator}

import scala.concurrent.Future


object CartoonMigrationApi extends CartoonMigrationApi(CartoonMigrator, CartoonMigrationTextReport, FlexCartoonMigrationServiceImpl)

class CartoonMigrationApi(migrator : Migrator, reporter : MigrationReport, flex : FlexContentMigrationService) extends Controller{

  import play.api.libs.concurrent.Execution.Implicits.defaultContext


  private def withMigrationPermission(migration : () => Future[Result]) : Future[Result] = {
    import featureswitches.FlexR2FeatureSwitch._
    if(!allowCartoonMigrationToFlex){
      val msg = "Attempt to migrate cartoons to flex: this feature is forbidden"
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

  def migrateCartoon(galleryId : Int) =  Action.async{ block => {
    Logger.debug(s"migrateCartoon ${galleryId}")
    withMigrationPermission{ () =>
      migrator.migrateIndividualContent(galleryId).map(reportSingleCartoon(_))
    }
  }
  }

  private def reportSingleCartoon(cartoon : ContentMigrationResult) = {
    Ok(reporter.reportSingleContent(cartoon))
  }

  private def reportMigratedBatch(batch : MigratedBatch) = {
    Ok(reporter.reportMigratedBatch(batch))
  }
}


object CartoonMigrationTextReport extends MigrationReport{

  private def getTruncatedReason(reason : String) ={
    val MaxLengthBody = 600
    if(reason.length<MaxLengthBody) reason
    else reason.substring(0, MaxLengthBody-1)
  }

  private def reportFailure(migratedCartoon : MigrationFailedContent) =
    s"""---Failed Cartoon---
        |Failed Cartoon ID: ${migratedCartoon.id}
        |Reason:
        |${getTruncatedReason(migratedCartoon.reason)}
        |
        |-----------------""".stripMargin

  private def reportSuccesses(migrated : Seq[MigratedContent]) =
    migrated.map(migrated => s"${migrated.id} -> ${migrated.composerId}").mkString("\n")


  def reportSingleContent(cartoon : ContentMigrationResult) : String = {

    if(cartoon.wasSuccess) {
      val migratedCartoon = cartoon.asInstanceOf[MigratedContent]
      s"Cartoon ${migratedCartoon.id} migrated successfully: ${migratedCartoon.composerId}"
    }
    else {
      val failed = cartoon.asInstanceOf[MigrationFailedContent]
      reportFailure(failed)
    }
  }

  override def reportMigratedBatch(batch : MigratedBatch) = {
    def batchFailureReport =
      s"Details:\n${reportSuccesses(batch.migrated)}\n\n${batch.failed.map(reportFailure(_) + "\n\n").mkString("\n")}"
    
    s"Batch Success Cartoons = ${batch.migrated.size}, Failed Cartoons = ${batch.failed.size} \n${batchFailureReport}"
  }
}
