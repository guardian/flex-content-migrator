package controllers.migration

import model._
import play.api.Logger
import play.api.mvc.{Action, Result, Controller}
import services.{FlexGalleryMigrationServiceImpl, FlexContentMigrationService}
import services.migration.{GalleryMigrator, Migrator}

import scala.concurrent.Future


object GalleryMigrationApi extends GalleryMigrationApi(GalleryMigrator, GalleryMigrationTextReport, FlexGalleryMigrationServiceImpl)

class GalleryMigrationApi(migrator : Migrator, reporter : MigrationReport, flex : FlexContentMigrationService) extends Controller{

  import play.api.libs.concurrent.Execution.Implicits.defaultContext


  private def withMigrationPermission(migration : () => Future[Result]) : Future[Result] = {
    import featureswitches.FlexR2FeatureSwitch._
    if(!allowGalleryMigrationToFlex){
      val msg = "Attempt to migrate galleries to flex: this feature is forbidden"
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

  def migrateGallery(galleryId : Int) =  Action.async{ block => {
    Logger.debug(s"migrateGallery ${galleryId}")
    withMigrationPermission{ () =>
      migrator.migrateIndividualContent(galleryId).map(reportSingleGallery(_))
    }
  }
  }

  private def reportSingleGallery(gallery : ContentMigrationResult) = {
    Ok(reporter.reportSingleContent(gallery))
  }

  private def reportMigratedBatch(batch : MigratedBatch) = {
    Ok(reporter.reportMigratedBatch(batch))
  }
}


object GalleryMigrationTextReport extends MigrationReport{

  private def getTruncatedReason(reason : String) ={
    val MaxLengthBody = 600
    if(reason.length<MaxLengthBody) reason
    else reason.substring(0, MaxLengthBody-1)
  }

  private def reportFailure(migratedGallery : MigrationFailedContent) =
    s"""---Failed Gallery---
        |Failed Gallery ID: ${migratedGallery.id}
        |Reason:
        |${getTruncatedReason(migratedGallery.reason)}
        |
        |-----------------""".stripMargin

  private def reportSuccesses(migrated : Seq[MigratedContent]) =
    migrated.map(migrated => s"${migrated.id} -> ${migrated.composerId}").mkString("\n")


  def reportSingleContent(gallery : ContentMigrationResult) : String = {

    if(gallery.wasSuccess) {
      val migratedGallery = gallery.asInstanceOf[MigratedContent]
      s"Gallery ${migratedGallery.id} migrated successfully: ${migratedGallery.composerId}"
    }
    else {
      val failed = gallery.asInstanceOf[MigrationFailedContent]
      reportFailure(failed)
    }
  }

  override def reportMigratedBatch(batch : MigratedBatch) = {
    def batchFailureReport =
      s"Details:\n${reportSuccesses(batch.migrated)}\n\n${batch.failed.map(reportFailure(_) + "\n\n").mkString("\n")}"
    
    s"Batch Success Galleries = ${batch.migrated.size}, Failed Galleries = ${batch.failed.size} \n${batchFailureReport}"
  }
}
