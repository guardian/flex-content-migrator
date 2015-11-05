package services.migration.r2ToFlexConversion

import java.io.File

import org.specs2.mock.Mockito
import org.specs2.mutable.Specification
import services.migration.quizbuilder.{Quiz, QuizImporterService}

import scala.concurrent.Future

class R2ToFlexQuizConversionSpec extends Specification with Mockito {

  val QuizId = "quizId123"

  def mockQuizImporterService : QuizImporterService = {
    val theMock = mock[QuizImporterService]
    theMock.importQuiz(any[Quiz]) answers { a : Any =>
      Future{Some(QuizId)}
    }
  }

  "R2ToFlexQuizConversion" should {
    def r2Json(path : String= "/migration/r2quiz.json") : Map[String, Any] = {
      val filePath = getClass.getResource(path).getFile
      val fileAsString = scala.io.Source.fromFile(new File(filePath)).getLines.reduceLeft(_+_)
      R2ToFlexQuizConversion.jsonMap(fileAsString)
    }
    
    lazy val parsedQuizJson = R2ToFlexQuizConversion.parseDraftData(r2Json(), mockQuizImporterService)
    "Build the quiz in json and import it into the QuizImporterService" in {
      val contentAtoms = parsedQuizJson.contentAtoms
      contentAtoms.size must equalTo(1)
      contentAtoms.head._1 must equalTo(QuizId)
      contentAtoms.head._2 must equalTo(true)

      val contentAtomsXml =  parsedQuizJson.xml \ "content-atoms" \ "content-atom"
      contentAtomsXml.size must equalTo(1)
      (contentAtomsXml \ "@id" ).text.toString must equalTo(QuizId)
      (contentAtomsXml \ "@required" ).text.toString must equalTo("true")

    }
    "accept R2 json" in {
      parsedQuizJson mustNotEqual null
    }
    "produce xml with article tag" in {
      val xml = parsedQuizJson.xml
      xml.isEmpty must equalTo(false)
      xml.toString must startWith("<article")
      xml.toString must endWith("</article>")
    }
    "parse page ID correctly" in {
      val r2PageId =  parsedQuizJson.xml \ "originalR2PageId"
      r2PageId.text.toString must equalTo("996748")
    }
    "parse content ID correctly" in {
      val r2ContentId =  parsedQuizJson.xml \ "originalR2ContentId"
      r2ContentId.text.toString must equalTo("335526960")
    }
    "parse cms path correctly" in {
      val cmsPath = parsedQuizJson.xml \ "@cms-path"
      cmsPath.text.toString must equalTo("uk/quiz/2008/apr/12/rockumentaries")
    }
    "parse web publication time correctly" in {
      val webPubTime = parsedQuizJson.xml \ "@web-publication-date"
      webPubTime.text.toString must equalTo("2008-04-12T12:23:00.000+01:00")
    }
    "parse created-date correctly" in {
      val createdDate = parsedQuizJson.xml \ "@created-date"
      createdDate.text.toString must equalTo("2008-07-07T12:23:18.000+01:00")
    }
    "parse modified-date correctly" in {
      val createdDate = parsedQuizJson.xml \ "@modified-date"
      createdDate.text.toString must equalTo("2008-07-08T16:40:37.000+01:00")
    }
    "parse created-user correctly" in {
      val expiry = parsedQuizJson.xml \ "@created-user"
      expiry.text.toString must equalTo("Uploader")
    }
    "parse tags correctly" in {
      val tags = (parsedQuizJson.xml \ "tags" \ "tag").map(t => t \ "@id").map(_.text.toString)
      tags.size must equalTo (4)
      tags must contain("8804")
      tags must contain("22609")
      tags must contain("26910")
      tags must contain("4")
    }
    "parse headline correctly" in {
      val headline = ( parsedQuizJson.xml  \ "headline").text.toString
      headline must equalTo("Quiz: Rockumentaries")
    }
    "parse linktext correctly" in {
      val linkText = ( parsedQuizJson.xml  \ "linktext").text.toString
      linkText must contain("Quiz: Rockumentaries")
    }
    "parse trail text correctly" in {
      val xml = parsedQuizJson.xml
      val trailtext = ( parsedQuizJson.xml  \ "trail").text.toString
      trailtext must contain("As Martin Scorsese's Shine a Light swaggers arthritically into cinemas, test your RQ (rock quotient)")
    }
    "parse trail picture correctly" in {
      val draftTrailPicture = parsedQuizJson.xml \ "trail-picture"
      draftTrailPicture.toString must equalTo("<trail-picture image-id=\"329948829\" media-id=\"gu-image-335558971\"/>")

      val liveTrailPictureMissingMediaId = R2ToFlexGalleryConversion.parseLiveData(r2Json()).xml \ "trail-picture"
      liveTrailPictureMissingMediaId.toString must equalTo("<trail-picture image-id=\"329948829\" media-id=\"gu-image-335558971\"/>")
    }
    "parse rights correctly" in {
      val syndicationAggregate  = (parsedQuizJson.xml \ "rights" \ "@syndicationAggregate").headOption.map(_.text.toString.toBoolean)
      val subscriptionDatabases = (parsedQuizJson.xml \ "rights" \ "@subscriptionDatabases").headOption.map(_.text.toString.toBoolean)
      val developerCommunity    = (parsedQuizJson.xml \ "rights" \ "@developerCommunity").headOption.map(_.text.toString.toBoolean)
      syndicationAggregate must equalTo(Some(true))
      subscriptionDatabases must equalTo(Some(true))
      developerCommunity must equalTo(Some(true))
    }
  }



}
