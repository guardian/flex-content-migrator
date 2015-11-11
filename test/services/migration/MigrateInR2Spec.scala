package services.migration

import java.util.concurrent.TimeUnit._

import akka.util.Timeout
import model._
import org.specs2.mock.Mockito
import org.specs2.mutable.Specification
import play.api.test.{Helpers, WithApplication}
import services.migration.r2.R2GalleryMigratorService

import scala.concurrent.Future

class MigrateInR2Spec extends Specification with Mockito {

  def r2ServiceThrowingConnectionException : R2GalleryMigratorService = {
    val theMock = mock[R2GalleryMigratorService]
    theMock.migrateContentInR2(any[Int], any[String]) answers { a : Any =>
      Future{throw new java.net.ConnectException("Connection refused")}
    }
  }

  def r2ServiceBehavingWell : R2GalleryMigratorService = {
    val theMock = mock[R2GalleryMigratorService]
    theMock.migrateContentInR2(any[Int], any[String]) returns Future{(true, "video migrated in r2")}
  }

  def r2ServiceFailedMigration : R2GalleryMigratorService = {
    val theMock = mock[R2GalleryMigratorService]
    theMock.migrateContentInR2(any[Int], any[String]) returns Future{(false, "could not migrate video in r2")}
  }

  def videoInFlex : ContentInFlex = {
    val theMock = mock[ContentInFlex]
    theMock.wasSuccess returns (true)
    theMock.composerId returns (Some("a1b2c3d4"))
    theMock
  }


  implicit val timeout = Timeout(30, SECONDS)


  "MigrateVideoInR2" should{
    "report back any R2 connection exceptions" in new WithApplication{
      val migrateInR2 =
        new MigrateContentInR2(r2ServiceThrowingConnectionException)
      val future = migrateInR2(videoInFlex)
      Helpers.await[ContentMigrationResult](future) must throwA[java.net.ConnectException]
    }
    "work for the correct case" in new WithApplication{
      val migrateInR2 =
        new MigrateContentInR2(r2ServiceBehavingWell)
      val future = migrateInR2(videoInFlex)
      Helpers.await[ContentMigrationResult](future).getClass must equalTo(classOf[MigratedContent])
    }
    "report back failures" in new WithApplication{
      val migrateInR2 =
        new MigrateContentInR2(r2ServiceFailedMigration)
      val future = migrateInR2(videoInFlex)
      Helpers.await[ContentMigrationResult](future).getClass must equalTo(classOf[MigrationFailedContent])
    }

  }

}
