package services.migration.r2

import model.{MigrationBatch, SourceContent}
import play.Logger
import services.migration.ThrottleControl

import scala.concurrent.Future


abstract class R2VideoMigratorService(client : R2IntegrationAPIClient) extends R2MigrationService{

  import ThrottleControl._
  import play.api.libs.concurrent.Execution.Implicits._

  private def loadContentWithThrottle(id : Integer) = {
    r2ThrottlerFt[SourceContent]{
      client.loadVideoById(id)
    }
  }

  def getBatchOfContentIds(batchSize : Int, batchOffset : Int) =
    client.getBatchOfVideoIds(batchSize, batchOffset)


  def loadContentById(id : Integer) = loadContentWithThrottle(id)


  private def getBatchOfVideoIds(batchSize : Int, batchOffset : Int) =
    client.getBatchOfVideoIds(batchSize, batchOffset)

  def loadBatchOfContent(batchSize : Int, batchNumber : Int = 1) : Future[MigrationBatch] = {
    def mapIdsToVideos(ids: Future[List[Int]]) = {
      def idsToVideos(ids : List[Int]) = ids.map(loadContentWithThrottle(_))

      ids.map{idsToVideos(_)}.flatMap(Future.sequence(_))
    }

    val ids = client.getBatchOfVideoIds(batchSize, batchNumber)
    val videos = mapIdsToVideos(ids)
    videos.map(loadedVideos => {
      Logger.info(s"Loaded the batch of ${batchSize} videos from R2")
      new MigrationBatch(loadedVideos)
    })
  }

  def isR2Video(videoId : Int) : Future[Boolean] =
    r2ThrottlerFt[Boolean]{
      client.isR2Video(videoId)
    }

  def migrateContentInR2(videoId : Int, composerId : String) : Future[(Boolean, String)] = {
    r2ThrottlerFt[(Boolean, String)]{
      client.migrateVideoInR2(videoId, composerId)
    }
  }
}

object R2VideoMigratorServiceImpl extends R2VideoMigratorService(new R2IntegrationAPIClient()){}