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


  override def getBatchOfContentIds(batchSize : Int, batchOffset : Int, tagIds : Option[String], withIdsHigherThan : Option[Int]) =
    client.getBatchOfArticleIds(batchSize, batchOffset, tagIds, withIdsHigherThan)


  def loadBatchOfContent(batchSize : Int, batchNumber : Int = 1, tagIds : Option[String] = None, withIdsHigherThan : Option[Int] = None) : Future[MigrationBatch] = {
    def mapIdsToArticles(ids: Future[List[Int]]) = {
      def idsToArticles(ids : List[Int]) = ids.map(loadContentWithThrottle(_))

      ids.map{idsToArticles(_)}.flatMap(Future.sequence(_))
    }

    val ids = client.getBatchOfArticleIds(batchSize, batchNumber, tagIds, withIdsHigherThan)
    val audios = mapIdsToArticles(ids)
    audios.map(loadedArticles => {
      Logger.info(s"Loaded the batch of ${batchSize} articles from R2")
      new MigrationBatch(loadedArticles)
    })
  }

  def loadIndividualContent(articleId : Int) : Future[SourceContent] = loadContentWithThrottle(articleId)


  def migrateContentInR2(articleId : Int, composerId : String) : Future[(Boolean, String)] = {
    r2ThrottlerFt[(Boolean, String)]{
      client.migrateArticleInR2(articleId, composerId)
    }
  }
}

object R2ArticleMigratorServiceImpl extends R2ArticleMigratorService(new R2IntegrationAPIClient()){}