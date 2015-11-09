package controllers.migration

import model._
import play.api.Logger
import play.api.mvc.{Action, Result, Controller}
import services.{FlexAudioMigrationServiceImpl, FlexContentMigrationService}
import services.migration.{AudioMigrator, Migrator}

import scala.concurrent.Future


object AudioMigrationApi extends AudioMigrationApi(AudioMigrator, AudioMigrationTextReport, FlexAudioMigrationServiceImpl)

class AudioMigrationApi(migrator : Migrator, reporter : MigrationReport, flex : FlexContentMigrationService) extends Controller{

  import play.api.libs.concurrent.Execution.Implicits.defaultContext


  private def withMigrationPermission(migration : () => Future[Result]) : Future[Result] = {
    import featureswitches.FlexR2FeatureSwitch._
    if(!allowAudioMigrationToFlex){
      val msg = "Attempt to migrate Audio to flex: this feature is forbidden"
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

  def migrateAudio(audioId : Int) =  Action.async{ block => {
    Logger.debug(s"migrateAudio ${audioId}")
    withMigrationPermission{ () =>
      migrator.migrateIndividualContent(audioId).map(reportSingleAudio(_))
    }
  }
  }

  private def reportSingleAudio(audio : MigratedContent) = {
    Ok(reporter.reportSingleContent(audio))
  }

  private def reportMigratedBatch(batch : MigratedBatch) = {
    Ok(reporter.reportMigratedBatch(batch))
  }
}


object AudioMigrationTextReport extends MigrationReport{

  private def getTruncatedReason(reason : String) ={
    val MaxLengthBody = 600
    if(reason.length<MaxLengthBody) reason
    else reason.substring(0, MaxLengthBody-1)
  }

  private def reportFailure(migratedAudio : MigrationFailedContent) =
    s"""---Failed Audio---
        |Failed Audio ID: ${migratedAudio.id}
        |Reason:
        |${getTruncatedReason(migratedAudio.reason)}
        |
        |-----------------""".stripMargin

  private def reportSuccesses(migrated : Seq[MigratedContent]) =
    migrated.map(migrated => s"${migrated.id} -> ${migrated.composerId}").mkString("\n")


  def reportSingleContent(audio : ContentMigrationResult) : String = {

    if(audio.wasSuccess) {
      val migratedAudio = audio.asInstanceOf[MigratedContent]
      s"Audio ${migratedAudio.id} migrated successfully: ${migratedAudio.composerId}"
    }
    else {
      val failed = audio.asInstanceOf[MigrationFailedContent]
      reportFailure(failed)
    }
  }

  override def reportMigratedBatch(batch : MigratedBatch) = {
    def batchFailureReport =
      s"Details:\n${reportSuccesses(batch.migrated)}\n\n${batch.failed.map(reportFailure(_) + "\n\n").mkString("\n")}"
    
    s"Batch Success Audios = ${batch.migrated.size}, Failed Audios = ${batch.failed.size} \n${batchFailureReport}"
  }
}
