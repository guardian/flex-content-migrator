package services.migration.r2

import model.{MigrationBatch, SourceContent}
import play.Logger
import services.migration.{MigrationBatchParams, ThrottleControl}

import scala.concurrent.Future


abstract class R2CartoonMigratorService(client : R2IntegrationAPIClient) extends R2MigrationService {

  import ThrottleControl._
  import play.api.libs.concurrent.Execution.Implicits._

  private def loadContentWithThrottle(id : Integer) = {
    r2ThrottlerFt[SourceContent]{
      client.loadCartoonById(id)
    }
  }

  def loadContentById(id : Integer) = loadContentWithThrottle(id)


  def getBatchOfContentIds(params : MigrationBatchParams) =
    client.getBatchOfCartoonIds(params)

  def loadBatchOfContent(params : MigrationBatchParams) : Future[MigrationBatch] = {
    def mapIdsToCartoons(ids: Future[List[Int]]) = {
      def idsToCartoons(ids : List[Int]) = ids.map(loadContentWithThrottle(_))

      ids.map{idsToCartoons(_)}.flatMap(Future.sequence(_))
    }

    val ids = client.getBatchOfCartoonIds(params)
    val cartoons = mapIdsToCartoons(ids)
    cartoons.map(loadedCartoons => {
      Logger.info(s"Loaded the batch of ${params.batchSize} cartoons from R2")
      new MigrationBatch(loadedCartoons)
    })
  }

  def loadIndividualContent(cartoonId : Int) : Future[SourceContent] = loadContentWithThrottle(cartoonId)


  def migrateContentInR2(cartoonId : Int, composerId : String) : Future[(Boolean, String)] = {
    r2ThrottlerFt[(Boolean, String)]{
      client.migrateCartoonInR2(cartoonId, composerId)
    }
  }
}

object R2CartoonMigratorServiceImpl extends R2CartoonMigratorService(new R2IntegrationAPIClient()){}