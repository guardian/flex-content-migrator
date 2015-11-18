package controllers.migration

import model._
import play.api.Logger
import play.api.mvc.{Action, Result, Controller}
import services.{FlexQuizMigrationServiceImpl, FlexContentMigrationService}
import services.migration.{QuizMigrator, Migrator}

import scala.concurrent.Future


object QuizMigrationApi extends QuizMigrationApi(QuizMigrator, QuizMigrationTextReport, FlexQuizMigrationServiceImpl)

class QuizMigrationApi(migrator : Migrator, reporter : MigrationReport, flex : FlexContentMigrationService) extends Controller{

  import play.api.libs.concurrent.Execution.Implicits.defaultContext


  private def withMigrationPermission(migration : () => Future[Result]) : Future[Result] = {
    import featureswitches.FlexR2FeatureSwitch._
    if(!allowQuizMigrationToFlex){
      val msg = "Attempt to migrate quiz to flex: this feature is forbidden"
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

  def migrateQuiz(quizId : Int) =  Action.async{ block => {
    Logger.debug(s"migrateQuiz ${quizId}")
    withMigrationPermission{ () =>
      migrator.migrateIndividualContent(quizId).map(reportSingleQuiz(_))
    }
  }
  }

  private def reportSingleQuiz(quiz : ContentMigrationResult) = {
    Ok(reporter.reportSingleContent(quiz))
  }

  private def reportMigratedBatch(batch : MigratedBatch) = {
    Ok(reporter.reportMigratedBatch(batch))
  }
}


object QuizMigrationTextReport extends MigrationReport{

  private def getTruncatedReason(reason : String) ={
    val MaxLengthBody = 600
    if(reason.length<MaxLengthBody) reason
    else reason.substring(0, MaxLengthBody-1)
  }

  private def reportFailure(migratedQuiz : MigrationFailedContent) =
    s"""---Failed Quiz---
        |Failed Quiz ID: ${migratedQuiz.id}
        |Reason:
        |${getTruncatedReason(migratedQuiz.reason)}
        |
        |-----------------""".stripMargin

  private def reportSuccesses(migrated : Seq[MigratedContent]) =
    migrated.map(migrated => s"${migrated.id} -> ${migrated.composerId}").mkString("\n")


  def reportSingleContent(quiz : ContentMigrationResult) : String = {

    if(quiz.wasSuccess) {
      val migratedQuiz = quiz.asInstanceOf[MigratedContent]
      s"Quiz ${migratedQuiz.id} migrated successfully: ${migratedQuiz.composerId}"
    }
    else {
      val failed = quiz.asInstanceOf[MigrationFailedContent]
      reportFailure(failed)
    }
  }

  override def reportMigratedBatch(batch : MigratedBatch) = {
    def batchFailureReport =
      s"Details:\n${reportSuccesses(batch.migrated)}\n\n${batch.failed.map(reportFailure(_) + "\n\n").mkString("\n")}"
    
    s"Batch Success Quizzes = ${batch.migrated.size}, Failed Quizzes = ${batch.failed.size} \n${batchFailureReport}"
  }
}
