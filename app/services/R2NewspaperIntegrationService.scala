package services


import java.io.File

import play.api.Play
import play.api.libs.ws.{WS, WSResponse}
import services.aws.Metrics
import scala.concurrent.Future
import Metrics._


trait R2NewspaperIntegrationService {

  def importVideoXmlFile(xmlFile : File) : Future[WSResponse]
  def importImage(imgFile : File, params : Map[String, String]) : Future[WSResponse]
  def addVideoEncoding(xmlFile : File) : Future[WSResponse]
  def addVideoThumb(xmlFile : File) : Future[WSResponse]
  def getVideoUrlForRedirect(code : Int) : String
  def isR2Video(storyBundleId : String) : Future[Boolean]

}


