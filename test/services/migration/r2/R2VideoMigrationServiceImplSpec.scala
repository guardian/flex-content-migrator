package services.migration.r2

import java.util.concurrent.TimeUnit._

import akka.util.Timeout
import model.MigrationBatch
import play.api.test._
import services.RealEndpointTest


class R2VideoMigrationServiceImplSpec extends RealEndpointTest  {

  import RealEndpointTest._
  lazy override val app: FakeApplication = new FakeApplication(
    // Overwrite configuration settings
    additionalConfiguration = Map("r2.baseurl" -> IntegrationTestEndpoint_r2)
  )
  implicit val timeout = Timeout(30, SECONDS)

  "R2 video loader service " should {
    "load a batch of videos" in new WithApplication(app) {
      val videosToLoadFuture = R2VideoMigratorServiceImpl.loadBatchOfContent(50)
      val videosToLoad = Helpers.await[MigrationBatch](videosToLoadFuture)
      videosToLoad.sourceContent.size must equalTo(50)
      videosToLoad.sourceContent.foreach{ video => {
        video.json must contain ("\"draftVideo\"")
      }}
    }
    "recognised if a video does not belong to R2" in new WithApplication(app) {
      val isR2Video  = Helpers.await[Boolean](R2VideoMigratorServiceImpl.isR2Video(123))
      isR2Video must equalTo(false)
    }
  }

}
