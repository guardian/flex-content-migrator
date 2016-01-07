package services.migration.r2

import java.util.concurrent.TimeUnit._

import akka.util.Timeout
import model.MigrationBatch
import play.api.test._
import services.RealEndpointTest
import services.migration.MigrationBatchParams


class R2GalleryMigrationServiceImplSpec extends RealEndpointTest  {

  import RealEndpointTest._
  lazy override val app: FakeApplication = new FakeApplication(
    // Overwrite configuration settings
    additionalConfiguration = Map("r2.baseurl" -> IntegrationTestEndpoint_r2)
  )
  implicit val timeout = Timeout(30, SECONDS)

  "R2 gallery loader service " should {
    "load a batch of galleries" in new WithApplication(app) {
      val galleriesToLoadFuture = R2GalleryMigratorServiceImpl.loadBatchOfContent(MigrationBatchParams(Some(50), None))
      val galleriesToLoad = Helpers.await[MigrationBatch](galleriesToLoadFuture)
      galleriesToLoad.sourceContent.size must equalTo(50)
      galleriesToLoad.sourceContent.foreach{ gallery => {
        gallery.json must contain ("\"draftGallery\"")
      }}
    }

  }

}
