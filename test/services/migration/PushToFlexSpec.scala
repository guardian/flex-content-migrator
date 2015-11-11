package services.migration


import java.io.File
import java.util.concurrent.TimeUnit._

import akka.util.Timeout
import model.{ContentInFlex, SourceContent, MigratedContent, TransformedVideo}
import org.specs2.mock.Mockito
import org.specs2.mutable.Specification
import play.api.test.{WithApplication, Helpers}
import services.migration.r2ToFlexConversion.R2ToFlexVideoConversion
import services.FlexContentMigrationService
import utils.{TempFileProcessor, TempFileProcessorImpl}
import scala.xml.Elem

class PushToFlexSpec extends Specification with Mockito {

  def flexApiServiceThrowingConnectionException : FlexContentMigrationService = {
    val theMock = mock[FlexContentMigrationService]
    theMock.migrateContentXml(any[File]) answers { a : Any =>
      throw new java.net.ConnectException("Connection refused")
    }
  }


  def tempFileProcessorThrowingException : TempFileProcessor = {
    val theMock = mock[TempFileProcessor]
    theMock.createTempFileForXml(any[Elem]) answers {
      a : Any =>
        throw new RuntimeException("Some problem")
    }
    theMock
  }

  def transformedVideo = {
    val mockSourceVideo = mock[SourceContent]
    mockSourceVideo.id returns 123
    val mockTransformedData = mock[R2ToFlexVideoConversion]
    val mockTransformedVideo = mock[TransformedVideo]
    mockTransformedData.xml returns <test>data</test>
    mockTransformedVideo.sourceContent returns mockSourceVideo
    mockTransformedVideo.liveData returns mockTransformedData
    mockTransformedVideo
  }
  implicit val timeout = Timeout(30, SECONDS)


  "PushToFlex" should{
    "report back any Flex connection exceptions" in new WithApplication{
      val pushToFlex =
        new PushToFlex(flexApiServiceThrowingConnectionException, TempFileProcessorImpl)
      val future = pushToFlex(transformedVideo)
      Helpers.await[ContentInFlex](future) must throwA[java.net.ConnectException]
    }
    "report back any temp file exceptions" in new WithApplication{
      val pushToFlex =
        new PushToFlex(flexApiServiceThrowingConnectionException, tempFileProcessorThrowingException)
      val future = pushToFlex(transformedVideo)
      Helpers.await[ContentInFlex](future) must throwA[java.lang.RuntimeException]
    }
  }

}
