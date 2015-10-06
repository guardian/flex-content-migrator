package services

import org.specs2.mutable.Specification
import play.api.test.FakeApplication

import scala.util.Try


trait RealEndpointTest extends Specification{
  /**
   * These tests talk to an actual R2 or Flex instances (in code) so should not be run as part of the build
   */
  args(skipAll = !isIntegrationMode)

  private def isIntegrationMode = {
    val isIntegration = java.lang.Boolean.valueOf(System.getProperty("integrationTest"))
    if(isIntegration) {
      System.out.println("*** Integration Tests Enabled ***")
    };
    isIntegration
  };

  import RealEndpointTest._
  lazy val app: FakeApplication = new FakeApplication(
    // Overwrite configuration settings
    additionalConfiguration =
      Map("r2.baseurl" -> IntegrationTestEndpoint_r2,
        "fleximport.baseurl" -> IntegrationTestEndpoint_flex,
        "composer.baseurl" -> IntegrationTestEndpoint_composer,
         "ws.acceptAnyCertificate" -> "true")

  )


  lazy val ValidVideoImportResource = getClass.getResource("/video_valid.xml").getFile
  lazy val ValidAddEncodingsResource = getClass.getResource("/video_encodings_valid.xml").getFile

  lazy val InValidVideoImportResource = getClass.getResource("/video_invalid.xml").getFile
}

object RealEndpointTest{
  val IntegrationTestEndpoint_r2 = "http://r2.code.dev-gutools.co.uk"
  val IntegrationTestEndpoint_flex = "http://flximport.code.gudev.gnm:8080"
  val IntegrationTestEndpoint_composer = "http://composer.code.dev-gutools.co.uk"
}
