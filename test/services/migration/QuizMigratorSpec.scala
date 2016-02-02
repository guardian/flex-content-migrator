package services.migration

import java.io.File
import java.util.concurrent.TimeUnit._

import akka.util.Timeout
import model.{ContentMigrationResult, MigratedBatch, MigratedContent, SourceContent}
import org.specs2.mock.Mockito
import org.specs2.mutable.Specification
import play.api.libs.ws.WSResponse
import play.api.test.{Helpers, WithApplication}
import services.FlexContentMigrationService
import services.migration.quizbuilder.{Quiz, QuizImporterService}
import services.migration.r2.R2QuizMigratorService
import utils.TempFileProcessorImpl

import scala.concurrent.Future
import scala.util.Random


class QuizMigratorSpec extends Specification with Mockito {

  val NumberOfQuizzes = 100

  val QuizzesToMigrate = List.fill(NumberOfQuizzes)(Random.nextInt)

  val QuizId = "123"


  val ExpectedResponseImportQuiz = "OK:123456;http://www.gucode.gnl/travel/cheese;MODIFIED"

  lazy val r2Json = {
    val path = getClass.getResource("/migration/r2quiz.json").getFile
    scala.io.Source.fromFile(new File(path)).getLines.reduceLeft(_+_)
  }

  val quizzes = for(i<- 1 to NumberOfQuizzes)
    yield SourceContent(i, r2Json)

  protected def mockWSResponse(responseContent : String) = {
    val response = mock[WSResponse]
    response.status returns 200
    response.body returns responseContent
    response
  }

  private def mockQuizImporterService : QuizImporterService = {
    val theMock = mock[QuizImporterService]
    theMock.importQuiz(any[Quiz]) answers { a : Any =>
      Future{Some(QuizId)}
    }
  }

  private def migrator : Migrator = {
    val r2QuizMigrator = mock[R2QuizMigratorService]
    r2QuizMigrator.loadContentById(any[Int]) returns Future{quizzes.head}
    r2QuizMigrator.getBatchOfContentIds(any[MigrationBatchParams]) returns Future{(1 to NumberOfQuizzes).toList}
    r2QuizMigrator.migrateContentInR2(any[Int], any[String]) returns Future{(true, "quiz migrated in r2")}

    val flexQuizMigrationService = mock[FlexContentMigrationService]
    flexQuizMigrationService.migrateContentXml(any[File]) returns Future{mockWSResponse(ExpectedResponseImportQuiz)}

    new QuizMigrator(r2QuizMigrator, flexQuizMigrationService, TempFileProcessorImpl)
  }
  implicit val timeout = Timeout(30, SECONDS)

  "QuizMigrator migrateSingleQuiz" should {
    "load, transform and then migrate a single quiz" in new WithApplication{
      val migratedQuizFuture = migrator.migrateIndividualContent(1)
      val migratedQuiz = Helpers.await[ContentMigrationResult](migratedQuizFuture)
      migratedQuiz.wasSuccess must equalTo(true)
    }
  }
  

}
