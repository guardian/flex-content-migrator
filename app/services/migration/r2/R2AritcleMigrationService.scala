package services.migration.r2

import model.{MigrationBatch, SourceContent}
import play.Logger
import services.migration.ThrottleControl

import scala.concurrent.Future


abstract class R2ArticleMigratorService(client : R2IntegrationAPIClient) extends R2MigrationService {

  import ThrottleControl._
  import play.api.libs.concurrent.Execution.Implicits._

  private def loadContentWithThrottle(id : Integer) = {
    r2ThrottlerFt[SourceContent]{
      client.loadArticleById(id)
    }
  }

  def loadContentById(id : Integer) = loadContentWithThrottle(id)


  def getBatchOfContentIds(batchSize : Int, batchOffset : Int) =
    client.getBatchOfArticleIds(batchSize, batchOffset)

  def loadBatchOfContent(batchSize : Int, batchNumber : Int = 1) : Future[MigrationBatch] = {
    def mapIdsToArticles(ids: Future[List[Int]]) = {
      def idsToArticles(ids : List[Int]) = ids.map(loadContentWithThrottle(_))

      ids.map{idsToArticles(_)}.flatMap(Future.sequence(_))
    }

    val ids = client.getBatchOfGalleryIds(batchSize, batchNumber)
    val audios = mapIdsToArticles(ids)
    audios.map(loadedArticles => {
      Logger.info(s"Loaded the batch of ${batchSize} audios from R2")
      new MigrationBatch(loadedArticles)
    })
  }

  def loadIndividualContent(audioId : Int) : Future[SourceContent] = loadContentWithThrottle(audioId)


  def migrateContentInR2(audioId : Int, composerId : String) : Future[(Boolean, String)] = {
    r2ThrottlerFt[(Boolean, String)]{
      client.migrateArticleInR2(audioId, composerId)
    }
  }
}

object R2ArticleMigratorServiceImpl extends R2ArticleMigratorService(new R2IntegrationAPIClient()){}