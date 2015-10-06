package services.migration.r2

import java.util.concurrent.TimeUnit._

import akka.util.Timeout
import model.{MigrationBatch, SourceContent}
import org.specs2.mock.Mockito
import play.api.test.{Helpers, PlaySpecification}

import scala.concurrent.Future


class R2VideoMigratorServiceSpec extends PlaySpecification with Mockito  {

  val videoId = 12345
  val videoJson = "some video json"



  private def doR2ClientMock : R2IntegrationAPIClient = {
    val mockR2 = mock[R2IntegrationAPIClient]
    mockR2.getBatchOfVideoIds(any[Int], any[Int]) returns Future(List(videoId))
    mockR2.loadVideoById(videoId) returns Future(new SourceContent(videoId, videoJson))
    mockR2.isR2Video(videoId) returns Future(true)
    mockR2.isR2Video(456) returns Future(false)
    mockR2

  }

  implicit val timeout = Timeout(30, SECONDS)

  "R2VideoLoaderService" should {
    "use R2VideoIntegrationAPIClient to load a batch of videos and sequence the results into a single future" in {
      val batchFuture = new R2VideoMigratorService(doR2ClientMock){}.loadBatchOfContent(50)
      val batch = Helpers.await[MigrationBatch](batchFuture)
      batch.sourceContent.size must equalTo(1)
      batch.sourceContent.head.id must equalTo(videoId)
      batch.sourceContent.head.json must equalTo(videoJson)

    }
    "recognise videos that are in R2" in {
      val isInR2 =  new R2VideoMigratorService(doR2ClientMock){}.isR2Video(videoId)
      Helpers.await[Boolean](isInR2) must equalTo (true)
    }
    "recognise videos that are not in R2" in {
      val isInR2 =  new R2VideoMigratorService(doR2ClientMock){}.isR2Video(456)
      Helpers.await[Boolean](isInR2) must equalTo (false)
    }
  }


}
