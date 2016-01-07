package services.migration.r2

import model.{MigrationBatch, SourceContent}
import play.Logger
import services.migration.{MigrationBatchParams, ThrottleControl}

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


  override def getBatchOfContentIds(params : MigrationBatchParams) =
    client.getBatchOfArticleIds(params)


  def loadBatchOfContent(params : MigrationBatchParams) : Future[MigrationBatch] = {
    def mapIdsToArticles(ids: Future[List[Int]]) = {
      def idsToArticles(ids : List[Int]) = ids.map(loadContentWithThrottle(_))

      ids.map{idsToArticles(_)}.flatMap(Future.sequence(_))
    }

    val ids = client.getBatchOfArticleIds(params)
    val articles = mapIdsToArticles(ids)
    articles.map(loadedArticles => {
      Logger.info(s"Loaded the batch of ${params.batchSize} articles from R2 ${params}")
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