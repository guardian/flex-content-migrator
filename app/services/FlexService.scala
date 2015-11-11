package services

import java.io.File

import play.Logger
import play.api.Play
import play.api.libs.ws.{WS, WSResponse}
import services.aws.{Metrics, CountMetric}
import Metrics._
import services.migration.ThrottleControl._

import scala.concurrent.Future

trait FlexAdminApiService extends AsyncCallerWithMultipartData{
  val FlexImportBaseUrl = Play.current.configuration.getString("fleximport.baseurl").get;
  val ConnectivityCheckUrl : String

  def doConnectivityCheck : Future[String] = {
    Logger.debug(s"Checking connectivity to ${ConnectivityCheckUrl}")
    import play.api.Play.current
    import play.api.libs.concurrent.Execution.Implicits._
    WS.url(ConnectivityCheckUrl).get().map(resp =>{
      Logger.debug(s"connectivity check response[${resp}]")
      resp.body
    })
  }
}

trait FlexContentMigrationService extends FlexAdminApiService{

  def migrateContentXml(xmlFile : File) : Future[WSResponse]
}



object FlexGalleryMigrationServiceImpl  extends FlexContentMigrationService{
  override lazy val ConnectivityCheckUrl = FlexImportBaseUrl + "/contentmigration/gallery/index";
  private def MigrateGalleryUrl = FlexImportBaseUrl + "/contentmigration/gallery"

  override def migrateContentXml(xmlFile: File): Future[WSResponse] = {
    flexThrottlerFt[WSResponse] {
      withCountIncr(Metrics.GalleriesMigratedInFlex) {
        makeAsyncCall(MigrateGalleryUrl, (xmlFile, "fileData"), Map())
      }
    }
  }
}

object FlexCartoonMigrationServiceImpl  extends FlexContentMigrationService{
  override lazy val ConnectivityCheckUrl = FlexImportBaseUrl + "/contentmigration/picture/index";
  private def MigrateCartoonUrl = FlexImportBaseUrl + "/contentmigration/picture"

  override def migrateContentXml(xmlFile: File): Future[WSResponse] = {
    flexThrottlerFt[WSResponse] {
      withCountIncr(Metrics.CartoonsMigratedInFlex) {
        makeAsyncCall(MigrateCartoonUrl, (xmlFile, "fileData"), Map())
      }
    }
  }
}


object FlexQuizMigrationServiceImpl  extends FlexContentMigrationService{
  override lazy val ConnectivityCheckUrl = FlexImportBaseUrl + "/contentmigration/article/index";
  private def MigrateQuizInArticleUrl = FlexImportBaseUrl + "/contentmigration/article"

  override def migrateContentXml(xmlFile: File): Future[WSResponse] = {
    flexThrottlerFt[WSResponse] {
      withCountIncr(Metrics.QuizzesMigratedInFlex) {
        makeAsyncCall(MigrateQuizInArticleUrl, (xmlFile, "fileData"), Map())
      }
    }
  }
}

object FlexAudioMigrationServiceImpl  extends FlexContentMigrationService{
  override lazy val ConnectivityCheckUrl = FlexImportBaseUrl + "/contentmigration/audio/index";
  private def MigrateAudioUrl = FlexImportBaseUrl + "/contentmigration/audio"

  override def migrateContentXml(xmlFile: File): Future[WSResponse] = {
    flexThrottlerFt[WSResponse] {
      withCountIncr(Metrics.AudiosMigratedInFlex) {
        makeAsyncCall(MigrateAudioUrl, (xmlFile, "fileData"), Map())
      }
    }
  }
}

object FlexArticleMigrationServiceImpl  extends FlexContentMigrationService{
  override lazy val ConnectivityCheckUrl = FlexImportBaseUrl + "/contentmigration/article/index";
  private def MigrateArticleUrl = FlexImportBaseUrl + "/contentmigration/article"

  override def migrateContentXml(xmlFile: File): Future[WSResponse] = {
    flexThrottlerFt[WSResponse] {
      withCountIncr(Metrics.ArticlesMigratedInFlex) {
        makeAsyncCall(MigrateArticleUrl, (xmlFile, "fileData"), Map())
      }
    }
  }
}


