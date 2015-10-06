package services

import java.io.File

import play.api.libs.ws.WSResponse
import play.api.test.Helpers._
import play.api.test._

import scala.concurrent.Future


class FlexVideoIntegrationServiceImplSpec extends RealEndpointTest {


  private def validXmlImportRequest = new File(ValidVideoImportResource)
  private def validXmlAddEncodingRequest = new File(ValidAddEncodingsResource)
  private def invalidXmlImportRequest = new File(InValidVideoImportResource)

  private def getResponse(fn: => Future[WSResponse]) : WSResponse = Helpers.await[WSResponse](fn)


  "Flex video integration video API" should {
    "pass API calls through to Flex and error msgs back" in new WithApplication(app){
      //NOTE: these file-based testcases share a single Play application due to file lock issues in SBT
      {
        val response = getResponse(FlexVideoIntegrationServiceImpl.importVideoXml(validXmlImportRequest))
        response.status must equalTo(200)
        response.body must contain("OK:")
        response.body must contain("http://")
        response.body must endWith("/cheese")
      }
      {
        val response = getResponse(FlexVideoIntegrationServiceImpl.addVideoEncoding(validXmlAddEncodingRequest))
        response.status must equalTo(200)
        response.body must contain("OK:")
        response.body must contain("http://")
        response.body must endWith("/cheese")
      }
      {
        val response = getResponse(FlexVideoIntegrationServiceImpl.importVideoXml(invalidXmlImportRequest))
        response.body must contain("ERROR:must have a story bundle id.")
        response.body must contain("must have a cdn-id.")
        response.body must contain("must have a value for duration minutes.")
      }
      {
        val response = getResponse(FlexVideoIntegrationServiceImpl.addVideoEncoding(invalidXmlImportRequest))
        response.body must contain("ERROR:must have a story bundle id.")
      }
    }
  }

}
