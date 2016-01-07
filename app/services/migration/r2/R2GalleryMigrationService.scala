package services.migration.r2

import model.{MigrationBatch, SourceContent}
import play.Logger
import services.migration.ThrottleControl

import scala.concurrent.Future


abstract class R2GalleryMigratorService(client : R2IntegrationAPIClient) extends R2MigrationService {

  import ThrottleControl._
  import play.api.libs.concurrent.Execution.Implicits._

  private def loadContentWithThrottle(id : Integer) = {
    r2ThrottlerFt[SourceContent]{
      client.loadGalleryById(id)
    }
  }

  def loadContentById(id : Integer) = loadContentWithThrottle(id)


  def getBatchOfContentIds(batchSize : Int, batchOffset : Int, tagIds : Option[String] = None, idsHigherThan : Option[Int] = None) =
    client.getBatchOfGalleryIds(batchSize, batchOffset, tagIds, idsHigherThan)

  def loadBatchOfContent(batchSize : Int, batchNumber : Int = 1, tagIds : Option[String] = None, idsHigherThan : Option[Int] = None) : Future[MigrationBatch] = {
    def mapIdsToGalleries(ids: Future[List[Int]]) = {
      def idsToGalleries(ids : List[Int]) = ids.map(loadContentWithThrottle(_))

      ids.map{idsToGalleries(_)}.flatMap(Future.sequence(_))
    }

    val ids = client.getBatchOfGalleryIds(batchSize, batchNumber, tagIds, idsHigherThan)
    val galleries = mapIdsToGalleries(ids)
    galleries.map(loadedGalleries => {
      Logger.info(s"Loaded the batch of ${batchSize} galleries from R2")
      new MigrationBatch(loadedGalleries)
    })
  }

  def loadIndividualContent(galleryId : Int) : Future[SourceContent] = loadContentWithThrottle(galleryId)


  def migrateContentInR2(galleryId : Int, composerId : String) : Future[(Boolean, String)] = {
    r2ThrottlerFt[(Boolean, String)]{
      client.migrateGalleryInR2(galleryId, composerId)
    }
  }
}

object R2GalleryMigratorServiceImpl extends R2GalleryMigratorService(new R2IntegrationAPIClient()){}