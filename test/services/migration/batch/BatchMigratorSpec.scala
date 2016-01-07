package services.migration.batch

import java.util.concurrent.atomic.AtomicInteger
import model._
import org.specs2.mock.Mockito
import org.mockito.Matchers.{eq => eqTo, _}
import org.specs2.mutable.Specification
import play.api.test.Helpers
import services.migration._
import ThrottleControl._
import services.migration.r2.R2GalleryMigratorService
import scala.concurrent._
import scala.concurrent.duration._


class BatchMigratorSpec extends Specification with Mockito {

  def srcVideo = SourceContent(1, s"somevideojson")
  def composerId = "abc123"

  trait AkkaMigrationMockedBehaviour{

    def mockR2VideoMigrator(batchSize: Int, batchOffset : Int) : R2GalleryMigratorService = {
      val themock = mock[R2GalleryMigratorService]
      themock.getBatchOfContentIds(eqTo(batchSize), eqTo(batchOffset), any[Option[String]], any[Option[Int]]) returns Future{(1 to batchSize).toList}
      themock.loadContentById(any[Int]) returns Future{srcVideo}
      themock.loadBatchOfContent(any[Int], any[Int], any[Option[String]], any[Option[Int]]) returns Future{ MigrationBatch({for(i <- 1 to batchSize) yield srcVideo}.toList)}
      themock
    }

    def mockPushToFlex: PushToFlex = {
      val migratedVideo = mock[ContentInFlex]
      migratedVideo.wasSuccess returns true;
      val themock = mock[PushToFlex]
      themock.apply(any[TransformedVideo]) returns Future{migratedVideo}
      themock
    }

    def mockTransformR2ToFlex : TransformR2ToFlex = {
      val mockTransformedVideo = mock[TransformedVideo]
      mockTransformedVideo.sourceContent returns srcVideo
      val themock = mock[TransformR2ToFlex]
      themock.apply(any[SourceContent]) returns mockTransformedVideo
      themock
    }

    def mockMigrateVideoInR2 : MigrateContentInR2 = {
      val themock = mock[MigrateContentInR2]
      themock.apply(any[ContentInFlex]) returns Future{MigratedContent(srcVideo.id, composerId)}
      themock
    }

    def buildBehaviour(batchSize : Int, batchOffset : Int) : MigrationBehaviour = {
      new MigrationBehaviour(){
        override val contentTransform = mockTransformR2ToFlex
        override val pushToFlex = mockPushToFlex
        override val contentLoader = mockR2VideoMigrator(batchSize, batchOffset)
        override val closeContentInSource = mockMigrateVideoInR2
      }
    }
    import MigrationBatchParams._
    def doAkkaBatchMigration(batchSize : Int, batchOffset : Int) : Future[MigratedBatch] =
      AkkaBatchMigrator.migrateBatch( buildBehaviour(batchSize, batchOffset))(MigrationBatchParams(Some(batchSize), Some(batchOffset)))


  }

  object AllBehaveWell extends AkkaMigrationMockedBehaviour


  object FrequentErrorsInR2AndFlex extends AkkaMigrationMockedBehaviour{
    val counterR2 = new AtomicInteger
    val counterFlex = new AtomicInteger

    override def mockR2VideoMigrator(batchSize: Int, batchOffset : Int) : R2GalleryMigratorService = {
      val themock = mock[R2GalleryMigratorService]
      themock.getBatchOfContentIds(eqTo(batchSize), eqTo(batchOffset), any[Option[String]], any[Option[Int]]) returns Future{(1 to batchSize).toList}
      themock.loadContentById(any[Int]) answers { m =>
        val count = counterR2.incrementAndGet()
        if(count%2==0) throw new RuntimeException("Something went BANG!")
        Future{srcVideo}
      }
      themock.loadBatchOfContent(any[Int], any[Int], any[Option[String]], any[Option[Int]]) returns Future{ MigrationBatch({for(i <- 1 to batchSize) yield srcVideo}.toList)}
      themock
    }

    override def mockPushToFlex: PushToFlex = {
      val migratedVideo = mock[ContentInFlex]
      migratedVideo.wasSuccess returns true;
      val themock = mock[PushToFlex]
      themock.apply(any[TransformedVideo]) answers { m =>
        val count = counterFlex.incrementAndGet()
        if(count%2==0) throw new RuntimeException("Something went BANG!")
        Future{migratedVideo}
      }
      themock
    }
  }

  object ThrottledR2AndFlex extends AkkaMigrationMockedBehaviour{


    override def mockR2VideoMigrator(batchSize: Int, batchOffset : Int) : R2GalleryMigratorService = {
      val themock = mock[R2GalleryMigratorService]
      themock.getBatchOfContentIds(batchSize, batchOffset, any[Option[String]]) returns Future{(1 to batchSize).toList}
      themock.loadContentById(any[Int]) answers { m =>
        r2ThrottlerFt[SourceContent]{
          Future{srcVideo}
        }
      }
      themock.loadBatchOfContent(any[Int], any[Int]) returns Future{ MigrationBatch({for(i <- 1 to batchSize) yield srcVideo}.toList)}
      themock
    }

    override def mockPushToFlex: PushToFlex = {
      val migratedVideo = mock[ContentInFlex]
      migratedVideo.wasSuccess returns true;
      val themock = mock[PushToFlex]
      themock.apply(any[TransformedVideo]) answers { m =>
        flexThrottlerFt[ContentInFlex]{
          Future{migratedVideo}
        }
      }
      themock
    }
  }

  object DependenciesHang extends AkkaMigrationMockedBehaviour{
    val SleepForAges = 1000 * 60 * 60 //1 hour sleep time - long enough that the akka ask will timeout and we will get responses

    override def mockR2VideoMigrator(batchSize: Int, batchOffset : Int) : R2GalleryMigratorService = {
      val themock = mock[R2GalleryMigratorService]
      themock.getBatchOfContentIds(batchSize, batchOffset, any[Option[String]]) returns Future{(1 to batchSize).toList}
      themock.loadContentById(any[Int]) answers { m =>
        Thread.sleep(SleepForAges)
        Future{srcVideo}
      }
      themock.loadBatchOfContent(any[Int], any[Int]) returns Future{ MigrationBatch({for(i <- 1 to batchSize) yield srcVideo}.toList)}
      themock
    }

    override def mockPushToFlex: PushToFlex = {
      val migratedVideo = mock[ContentInFlex]
      migratedVideo.wasSuccess returns true;
      val themock = mock[PushToFlex]
      themock.apply(any[TransformedVideo]) answers { m =>
        Thread.sleep(SleepForAges)
        Future{migratedVideo}
      }
      themock
    }
  }


  "AkkaBatchMigrator" should {
    "migrate a large batch of 1000 with an offset of 11 and get a result when all dependencies behave well" in {
      val batchSize = 1000
      val batchOffset = 11
      val future = AllBehaveWell.doAkkaBatchMigration(batchSize, batchOffset)
      val migratedBatch = Helpers.await[MigratedBatch](future, 60L, SECONDS)
      migratedBatch.migrated.size must equalTo(batchSize)
    }

    "collect errors when the dependencies are misbehaved" in {
      val batchSize = 100
      val batchOffset = 1
      val future = FrequentErrorsInR2AndFlex.doAkkaBatchMigration(batchSize, batchOffset)
      val migratedBatch = Helpers.await[MigratedBatch](future, 60L, SECONDS)
      migratedBatch.migrated.size must equalTo(batchSize/4) //as there are 1/2 * 1/2 chance of success
      migratedBatch.failed.size must equalTo((batchSize*3) / 4) //the remaining 3/4 will have failed
    }
  }


  "SimpleBatchMigrator" should {
    def doSimpleBatchMigration(batchSize : Int, batchOffset : Int) =
      SimpleBatchMigrator.migrateBatch( AllBehaveWell.buildBehaviour(batchSize, batchOffset))(MigrationBatchParams(Some(batchSize), Some(batchOffset)))

    "migrate a batch of 10 and get a result" in {
      val batchSize = 10
      val batchOffset = 11
      val migratedBatch = Helpers.await[MigratedBatch](doSimpleBatchMigration(batchSize, batchOffset), 10L, SECONDS)
      migratedBatch.migrated.size must equalTo(batchSize)
    }
  }



}
