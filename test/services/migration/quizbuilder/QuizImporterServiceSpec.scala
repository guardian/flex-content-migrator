package services.migration.quizbuilder

import java.util.concurrent.TimeUnit._

import akka.util.Timeout
import org.joda.time.DateTime
import org.specs2.mock.Mockito
import org.specs2.mutable.Specification
import play.api.test.{Helpers, WithApplication}
import services.RealEndpointTest

class QuizImporterServiceSpec extends Specification with Mockito with RealEndpointTest {

  implicit val timeout = Timeout(30, SECONDS)


  val quiz = {
    val image = new QuizImage("src", "alt")
    val answerRight = new QuizQuestionAnswer("blah", true, Some(image))
    val answerWrong = new QuizQuestionAnswer("bluh", false, None)
    val question1 = new QuizQuestion("who did what and when?", answerRight :: answerWrong :: Nil, None)
    val question2 = new QuizQuestion("and what else?", answerRight :: answerWrong :: Nil, Some(image))
    val resultGroup1 = new QuizResultGroup("clever", 50)
    val resultGroup2 = new QuizResultGroup("thick", 0)

    new Quiz(123, "some quiz", DateTime.now, "Tom", DateTime.now, "me", question1 :: question2 :: Nil, resultGroup1 :: resultGroup2 :: Nil)
  }

  "QuizImporterService" should {
    "allow you to import a quiz" in new WithApplication{
      val quizImporter = new QuizImporterService
      val importedId = Helpers.await[Option[String]](quizImporter.importQuiz(quiz))
      importedId.isDefined must equalTo(true)
    }
  }

}
