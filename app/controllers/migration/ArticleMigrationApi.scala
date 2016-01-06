package controllers.migration

import com.fasterxml.jackson.core.JsonParseException
import controllers.Application._
import model._
import org.apache.commons.lang3.exception.ExceptionUtils
import play.api.Logger
import play.api.mvc.{Action, Result, Controller}
import services.aws.Monitors._
import services.{FlexArticleMigrationServiceImpl, FlexContentMigrationService}
import services.migration.{ArticleMigrator, Migrator}
import play.api.mvc._
import play.api.libs.json._
import play.api.libs.functional.syntax._

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

  def migrateBatch(batchSize : Option[Int], batchNumber : Option[Int], tagIds : Option[String], withIdsHigherThan : Option[Int] ) = Action.async{ block => {
    Logger.debug(s"migrateBatch ${batchSize} ${batchNumber} ${tagIds} ${withIdsHigherThan}")

    withMigrationPermission{ () =>
      try{
        doNotOverloadSubsystems[Future[Result]]{ () =>

          migrator.migrateBatchOfContent(batchSize, batchNumber, tagIds).map(reportMigratedBatch(_))

        }
      }
      catch{
        case e: Exception => Future{InternalServerError(e.toString)}
      }

    }
  }}

  def articlePage = Action {
    Ok(views.html.article(stageOpt.getOrElse("local")))
  }

  def migrateArticleJson(articleId : Int) = Action.async{ block => {
    Logger.debug(s"migrateArticleJson ${articleId}")
    withMigrationPermission{ () =>
      migrator.migrateIndividualContent(articleId).map(getJsonMigratedContent(_)).
        recover{
          case e : Throwable => getJsonError(articleId, e)
        }
    }
  }
  }

  def migrateArticle(articleId : Int) =  Action.async{ block => {
    Logger.debug(s"migrateArticle ${articleId}")
    withMigrationPermission{ () =>
      migrator.migrateIndividualContent(articleId).map(reportSingleArticle(_)).
        recover{
          case e : Throwable => InternalServerError(s"Failed to migrate article: ${e}")
        }
    }
  }
  }

  private def getUsefulErrorMessageFromThrowable(e : Throwable) : String = {
    val stackTrace = ExceptionUtils.getStackTrace(e)
    e match {
      case e : JsonParseException => s"Could not load (or parse) the article from R2\n\n ${stackTrace}"
      case e : java.net.ConnectException => s"Could not connect to one of the systems (${e.getMessage})\n\n${stackTrace}}"
      case e : Throwable => s"An exception was thrown at some point in the process.\n\n ${stackTrace}"

    }
  }

  private def getJsonError(id : Int, e : Throwable) : Result = {
    val result = MigrationFailedContent(id, getUsefulErrorMessageFromThrowable(e))
    getJsonMigratedContent(result)
  }

  implicit val failedWrites: Writes[MigrationFailedContent] = (
    (JsPath \ "id").write[Int] and
    (JsPath \ "reason").write[String]
  )(unlift(MigrationFailedContent.unapply))

  implicit val succesWrites: Writes[MigratedContent] = (
    (JsPath \ "id").write[Int] and
    (JsPath \ "composerId").write[String]
  )(unlift(MigratedContent.unapply))

  private def getJsonMigratedContent(result : ContentMigrationResult) : Result = {

    result match {
      case failed : MigrationFailedContent => {
        InternalServerError(Json.toJson(failed))
      }
      case success : MigratedContent => {
        Ok(Json.toJson(success))
      }
    }

  }

  private def reportSingleArticle(article : ContentMigrationResult) = {
    try{
      Ok(reporter.reportSingleContent(article))
    }
    catch{
      case e: Exception => {
        Logger.error(e.toString, e)
        InternalServerError(s"Failed to migrate article: ${e}")
      }
    }
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
    def highestIdAttempted =
      (batch.migrated.map(_.id) :: batch.failed.map(_.id) :: Nil).max

    s"""
       |Batch Success Articles = ${batch.migrated.size}, Failed Articles = ${batch.failed.size}\n
       |Highest Attempted Id: ${highestIdAttempted}\n
       |${batchFailureReport}
     """.stripMargin
  }
}
