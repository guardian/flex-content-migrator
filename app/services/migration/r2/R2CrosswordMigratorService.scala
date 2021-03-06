package services.migration.r2

import model.{MigrationBatch, SourceContent}
import play.Logger
import services.migration.{MigrationBatchParams, ThrottleControl}

import scala.concurrent.Future


abstract class R2CrosswordMigratorService(client : R2IntegrationAPIClient) extends R2MigrationService {

  import ThrottleControl._
  import play.api.libs.concurrent.Execution.Implicits._

  private def loadContentWithThrottle(id : Integer) = {
    r2ThrottlerFt[SourceContent]{
      client.loadCrosswordById(id)
    }
  }

  def loadContentById(id : Integer) = loadContentWithThrottle(id)


  def getBatchOfContentIds(params : MigrationBatchParams) =
    client.getBatchOfCrosswordIds(params)

  def loadBatchOfContent(params: MigrationBatchParams) : Future[MigrationBatch] = {
    def mapIdsToAudios(ids: Future[List[Int]]) = {
      def idsToAudios(ids : List[Int]) = ids.map(loadContentWithThrottle(_))

      ids.map{idsToAudios(_)}.flatMap(Future.sequence(_))
    }

    val ids = client.getBatchOfCrosswordIds(params)
    val audios = mapIdsToAudios(ids)
    audios.map(loadedAudios => {
      Logger.info(s"Loaded the batch of ${params.batchSize} audios from R2")
      new MigrationBatch(loadedAudios)
    })
  }

  def loadIndividualContent(audioId : Int) : Future[SourceContent] = loadContentWithThrottle(audioId)


  def migrateContentInR2(audioId : Int, composerId : String) : Future[(Boolean, String)] = {
    r2ThrottlerFt[(Boolean, String)]{
      client.migrateCrosswordInR2(audioId, composerId)
    }
  }
}

object R2CrosswordMigratorServiceImpl extends R2CrosswordMigratorService(new R2IntegrationAPIClient()){}