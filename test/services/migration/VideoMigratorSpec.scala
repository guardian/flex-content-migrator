package services.migration

import java.io.File
import java.util.concurrent.TimeUnit._

import akka.util.Timeout
import model.{MigratedContent, SourceContent, MigratedBatch}
import org.specs2.mock.Mockito
import org.specs2.mutable.Specification
import play.api.libs.ws.WSResponse
import play.api.test.{WithApplication, Helpers}
import services.FlexContentMigrationService
import services.migration.r2.R2VideoMigratorService
import utils.TempFileProcessorImpl

import scala.concurrent.Future
import scala.util.Random


class VideoMigratorSpec extends Specification with Mockito {

  val NumberOfVideos = 100

  val VideosToMigrate = List.fill(NumberOfVideos)(Random.nextInt)


  val ExpectedResponseImportVideo = "OK:123456;http://www.gucode.gnl/travel/cheese;MODIFIED"

  lazy val r2Json = {
    val path = getClass.getResource("/migration/r2video.json").getFile
    scala.io.Source.fromFile(new File(path)).getLines.reduceLeft(_+_)
  }

  val videos = for(i<- 1 to NumberOfVideos)
    yield SourceContent(i, r2Json)

  protected def mockWSResponse(responseContent : String) = {
    val response = mock[WSResponse]
    response.status returns 200
    response.body returns responseContent
    response
  }

  private def migrator : Migrator = {
    val r2VideoMigrator = mock[R2VideoMigratorService]
    r2VideoMigrator.loadContentById(any[Int]) returns Future{videos.head}
    r2VideoMigrator.getBatchOfContentIds(any[Int], any[Int]) returns Future{(1 to NumberOfVideos).toList}
    r2VideoMigrator.migrateContentInR2(any[Int], any[String]) returns Future{(true, "video migrated in r2")}

    val flexVideoMigrationService = mock[FlexContentMigrationService]
    flexVideoMigrationService.migrateContentXml(any[File]) returns Future{mockWSResponse(ExpectedResponseImportVideo)}

    new VideoMigrator(r2VideoMigrator, flexVideoMigrationService, TempFileProcessorImpl)
  }
  implicit val timeout = Timeout(30, SECONDS)

  "VideoMigrator migrateSingleVideo" should {
    "load, transform and then migrate a single video" in new WithApplication{
      val migratedVideoFuture = migrator.migrateIndividualContent(1)
      val migratedVideo = Helpers.await[MigratedContent](migratedVideoFuture)
      migratedVideo.wasSuccess must equalTo(true)
    }
  }


  "VideoMigrator migrateBatch" should {
    "load, transform and then migrate video data for all videos" in new WithApplication{
      val migratedBatchFuture = migrator.migrateBatchOfContent(Some(NumberOfVideos), None)
      val migratedBatch = Helpers.await[MigratedBatch](migratedBatchFuture)
      migratedBatch.migrated.size must equalTo(VideosToMigrate.size)
      migratedBatch.failed.size must equalTo(0)
    }
  }

}
