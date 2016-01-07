package services.migration

import java.io.File
import java.util.concurrent.TimeUnit._

import akka.util.Timeout
import model.{ContentMigrationResult, MigratedBatch, MigratedContent, SourceContent}
import org.specs2.mock.Mockito
import org.specs2.mutable.Specification
import play.api.libs.ws.WSResponse
import play.api.test.{Helpers, WithApplication}
import services.FlexContentMigrationService
import services.migration.r2.R2GalleryMigratorService
import utils.TempFileProcessorImpl

import scala.concurrent.Future
import scala.util.Random


class GalleryMigratorSpec extends Specification with Mockito {

  val NumberOfGalleries = 100

  val GalleriesToMigrate = List.fill(NumberOfGalleries)(Random.nextInt)


  val ExpectedResponseImportGallery = "OK:123456;http://www.gucode.gnl/travel/cheese;MODIFIED"

  lazy val r2Json = {
    val path = getClass.getResource("/migration/r2gallery.json").getFile
    scala.io.Source.fromFile(new File(path)).getLines.reduceLeft(_+_)
  }

  val galleries = for(i<- 1 to NumberOfGalleries)
    yield SourceContent(i, r2Json)

  protected def mockWSResponse(responseContent : String) = {
    val response = mock[WSResponse]
    response.status returns 200
    response.body returns responseContent
    response
  }

  private def migrator : Migrator = {
    val r2GalleryMigrator = mock[R2GalleryMigratorService]
    r2GalleryMigrator.loadContentById(any[Int]) returns Future{galleries.head}
    r2GalleryMigrator.getBatchOfContentIds(any[Int], any[Int], any[Option[String]], any[Option[Int]]) returns Future{(1 to NumberOfGalleries).toList}
    r2GalleryMigrator.migrateContentInR2(any[Int], any[String]) returns Future{(true, "gallery migrated in r2")}

    val flexGalleryMigrationService = mock[FlexContentMigrationService]
    flexGalleryMigrationService.migrateContentXml(any[File]) returns Future{mockWSResponse(ExpectedResponseImportGallery)}

    new GalleryMigrator(r2GalleryMigrator, flexGalleryMigrationService, TempFileProcessorImpl)
  }
  implicit val timeout = Timeout(30, SECONDS)

  "GalleryMigrator migrateSingleGallery" should {
    "load, transform and then migrate a single gallery" in new WithApplication{
      val migratedGalleryFuture = migrator.migrateIndividualContent(1)
      val migratedGallery = Helpers.await[ContentMigrationResult](migratedGalleryFuture)
      migratedGallery.wasSuccess must equalTo(true)
    }
  }


  "GalleryMigrator migrateBatch" should {
    "load, transform and then migrate gallery data for all galleries" in new WithApplication{
      val migratedBatchFuture = migrator.migrateBatchOfContent(MigrationBatchParams(Some(NumberOfGalleries), None))
      val migratedBatch = Helpers.await[MigratedBatch](migratedBatchFuture)
      migratedBatch.migrated.size must equalTo(GalleriesToMigrate.size)
      migratedBatch.failed.size must equalTo(0)
    }
  }

}
