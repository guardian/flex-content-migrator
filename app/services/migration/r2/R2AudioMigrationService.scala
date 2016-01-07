package services.migration.r2

import model.{MigrationBatch, SourceContent}
import play.Logger
import services.migration.ThrottleControl

import scala.concurrent.Future


abstract class R2AudioMigratorService(client : R2IntegrationAPIClient) extends R2MigrationService {

  import ThrottleControl._
  import play.api.libs.concurrent.Execution.Implicits._

  private def loadContentWithThrottle(id : Integer) = {
    r2ThrottlerFt[SourceContent]{
      client.loadAudioById(id)
    }
  }

  def loadContentById(id : Integer) = loadContentWithThrottle(id)


  def getBatchOfContentIds(batchSize : Int, batchOffset : Int, tagIds : Option[String] = None, idsHigherThan : Option[Int] = None) = {
    assert(tagIds.isEmpty) //not supported
    assert(idsHigherThan.isEmpty) //not supported

    client.getBatchOfAudioIds(batchSize, batchOffset)
  }

  def loadBatchOfContent(batchSize : Int, batchNumber : Int = 1, tagIds : Option[String] = None, idsHigherThan : Option[Int] = None) : Future[MigrationBatch] = {
    def mapIdsToAudios(ids: Future[List[Int]]) = {
      def idsToAudios(ids : List[Int]) = ids.map(loadContentWithThrottle(_))

      ids.map{idsToAudios(_)}.flatMap(Future.sequence(_))
    }
    val ids = client.getBatchOfAudioIds(batchSize, batchNumber, tagIds, idsHigherThan)
    val audios = mapIdsToAudios(ids)
    audios.map(loadedAudios => {
      Logger.info(s"Loaded the batch of ${batchSize} audios from R2")
      new MigrationBatch(loadedAudios)
    })
  }

  def loadIndividualContent(audioId : Int) : Future[SourceContent] = loadContentWithThrottle(audioId)


  def migrateContentInR2(audioId : Int, composerId : String) : Future[(Boolean, String)] = {
    r2ThrottlerFt[(Boolean, String)]{
      client.migrateAudioInR2(audioId, composerId)
    }
  }
}

object R2AudioMigratorServiceImpl extends R2AudioMigratorService(new R2IntegrationAPIClient()){}