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


object FlexQuizMigrationServiceImpl  extends FlexContentMigrationService{
  override lazy val ConnectivityCheckUrl = FlexImportBaseUrl + "/contentmigration/article/index";
  private def MigrateQuizInArticleUrl = FlexImportBaseUrl + "/contentmigration/article" //NOTE: quizzes get imported as ARTICLES

  override def migrateContentXml(xmlFile: File): Future[WSResponse] = {
    flexThrottlerFt[WSResponse] {
      withCountIncr(Metrics.QuizzesMigratedInFlex) {
        makeAsyncCall(MigrateQuizInArticleUrl, (xmlFile, "fileData"), Map())
      }
    }
  }
}

