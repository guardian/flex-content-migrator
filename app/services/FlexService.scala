package services



import java.io.File

import play.Logger
import play.api.Play
import play.api.libs.ws.{WS, WSResponse}
import services.FlexVideoIntegrationServiceImpl._
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


trait FlexVideoIntegrationService extends FlexAdminApiService{

  def importVideoXml(xmlFile : File) : Future[WSResponse]
  def addVideoEncoding(xmlFile : File) : Future[WSResponse]
  def getVideoUrlForRedirect(code : String) : String

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


object FlexVideoIntegrationServiceImpl  extends FlexVideoIntegrationService
                                        with FlexContentMigrationService{

  private val ComposerBaseUrl = Play.current.configuration.getString("composer.baseurl").get;

  private def ImportVideoUrl =  FlexImportBaseUrl + "/videointegration/video/import"
  private def MigrateVideoUrl = FlexImportBaseUrl + "/videointegration/video/migrate"
  private def AddEncodingUrl =  FlexImportBaseUrl + "/videointegration/video/add-encoding"
  override lazy val ConnectivityCheckUrl = FlexImportBaseUrl + "/videointegration/index";



  override def importVideoXml(xmlFile : File) = {
    flexThrottlerFt[WSResponse] {
        makeAsyncCall(ImportVideoUrl, (xmlFile, "fileData"), Map())
    }
  }

  override def addVideoEncoding(xmlFile : File) = {
    flexThrottlerFt[WSResponse] {
        makeAsyncCall(AddEncodingUrl, (xmlFile, "fileData"), Map())
    }
  }

  override def migrateContentXml(xmlFile : File) = {
    flexThrottlerFt[WSResponse] {
        makeAsyncCall(MigrateVideoUrl, (xmlFile, "fileData"), Map())
    }
  }

  def getVideoUrlForRedirect(code : String) : String = s"${ComposerBaseUrl}/content/${code}"

}
