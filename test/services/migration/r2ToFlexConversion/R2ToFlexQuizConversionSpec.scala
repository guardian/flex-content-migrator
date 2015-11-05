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
    
    lazy val parsedQuizJson = R2ToFlexQuizConversion.parseDraftData(r2Json())
    "Build the quiz in json and import it into the QuizImporterService" in {
      val convertor = new R2ToFlexQuizConversion(r2Json(), false, mockQuizImporterService)
      val contentAtoms = convertor.contentAtoms
      contentAtoms.size must equalTo(1)
      contentAtoms.head._1 must equalTo(QuizId)
      contentAtoms.head._2 must equalTo(true)

    }
//    "accept R2 json" in {
//      parsedQuizJson mustNotEqual null
//    }
//    "produce xml with gallery tag" in {
//      val xml = parsedQuizJson.xml
//      xml.isEmpty must equalTo(false)
//      xml.toString must startWith("<quiz")
//      xml.toString must endWith("</quiz>")
//    }
//    "parse page ID correctly" in {
//      val r2PageId =  parsedQuizJson.xml \ "originalR2PageId"
//      r2PageId.text.toString must equalTo("49195")
//    }
//    "parse content ID correctly" in {
//      val r2ContentId =  parsedQuizJson.xml \ "originalR2ContentId"
//      r2ContentId.text.toString must equalTo("330288569")
//    }
//    "parse story bundle ID correctly" in {
//      val storyBundleId =  parsedQuizJson.xml \ "@story-bundle"
//      storyBundleId.text.toString must equalTo("32233")
//    }
//    "parse cms path correctly" in {
//      val cmsPath = parsedQuizJson.xml \ "@cms-path"
//      cmsPath.text.toString must equalTo("news/quiz/2007/jul/27/internationalnews1")
//    }
//    "parse web publication time correctly" in {
//      val webPubTime = parsedQuizJson.xml \ "@web-publication-date"
//      webPubTime.text.toString must equalTo("2007-07-27T17:52:21.000+01:00")
//    }
//    "parse created-date correctly" in {
//      val createdDate = parsedQuizJson.xml \ "@created-date"
//      createdDate.text.toString must equalTo("2007-07-27T15:46:23.000+01:00")
//    }
//    "parse modified-date correctly" in {
//      val createdDate = parsedQuizJson.xml \ "@modified-date"
//      createdDate.text.toString must equalTo("2008-02-08T16:40:11.000Z")
//    }
//    "parse created-user correctly" in {
//      val expiry = parsedQuizJson.xml \ "@created-user"
//      expiry.text.toString must equalTo("Travel Editor")
//    }
//    "parse tags correctly" in {
//      val tags = (parsedQuizJson.xml \ "tags" \ "tag").map(t => t \ "@id").map(_.text.toString)
//      tags.size must equalTo (4)
//      tags must contain("9234")
//      tags must contain("8783")
//      tags must contain("26904")
//      tags must contain("4")
//    }
//    "parse headline correctly" in {
//      val headline = ( parsedQuizJson.xml  \ "headline").text.toString
//      headline must equalTo("Red Mosque reopens")
//    }
//    "parse linktext correctly" in {
//      val linkText = ( parsedQuizJson.xml  \ "linktext").text.toString
//      linkText must contain("Red Mosque reopens")
//    }
//    "parse trail text correctly" in {
//      val xml = parsedQuizJson.xml
//      val trailtext = ( parsedQuizJson.xml  \ "trail").text.toString
//      trailtext must contain("A suspected suicide bomber killed 11 people and injured scores more following renewed violence at Islamabad's Red Mosque")
//    }
//    "parse trail picture correctly" in {
//      val draftTrailPicture = parsedQuizJson.xml \ "trail-picture"
//      draftTrailPicture.toString must equalTo("<trail-picture image-id=\"332443868\" media-id=\"gu-image-1234\"/>")
//
//      val liveTrailPictureMissingMediaId = R2ToFlexGalleryConversion.parseLiveData(r2Json()).xml \ "trail-picture"
//      liveTrailPictureMissingMediaId.toString must equalTo("<trail-picture image-id=\"332443868\"/>")
//    }
//    "parse pictures correctly" in {
//      val additionalPictures = parsedQuizJson.xml \ "pictures" \ "picture"
//      additionalPictures.size must equalTo(16) //8 pictures and 8 thumbnails
//
//      //first picture and thumbnail
//      {
//        val thePic = additionalPictures.head
//        val theThumb = additionalPictures.tail.head
//
//        (thePic \ "@image-id").text.toString must equalTo("330288634")
//        (thePic\ "@media-id").text.toString must equalTo("gu-image-330288636")  //note: draft picture Id
//        ((thePic \ "caption").text.toString ) must startWith("July 27 2007: Hundreds of religious students occupy the Red Mosque")
//
//        (theThumb \ "@image-id").text.toString must equalTo("330288635")
//        (theThumb\ "@media-id").text.toString must equalTo("gu-image-330288636")
//      }
//
//      //second picture and thumbnail
//      {
//        val thePic = additionalPictures.tail.tail.head
//        val theThumb = additionalPictures.tail.tail.tail.head
//
//        (thePic \ "@image-id").text.toString must equalTo("330288643")
//        (thePic\ "@media-id").text.toString must equalTo("gu-image-330288645")
//        ((thePic \ "caption").text.toString ) must startWith("July 27 2007: Pakistani religious students watch")
//
//        (theThumb \ "@image-id").text.toString must equalTo("330288644")
//        (theThumb\ "@media-id").text.toString must equalTo("gu-image-330288645")
//      }
//    }
//    "parse rights correctly" in {
//      val syndicationAggregate  = (parsedQuizJson.xml \ "rights" \ "@syndicationAggregate").headOption.map(_.text.toString.toBoolean)
//      val subscriptionDatabases = (parsedQuizJson.xml \ "rights" \ "@subscriptionDatabases").headOption.map(_.text.toString.toBoolean)
//      val developerCommunity    = (parsedQuizJson.xml \ "rights" \ "@developerCommunity").headOption.map(_.text.toString.toBoolean)
//      syndicationAggregate must equalTo(Some(false))
//      subscriptionDatabases must equalTo(Some(false))
//      developerCommunity must equalTo(Some(true))
//    }
//    "parse rights expiry correctly" in {
//      val isExpired = (parsedQuizJson.xml \ "expiry" \ "rights" \ "@expired").headOption.map(_.text.toString)
//      val expiredAt = (parsedQuizJson.xml \ "expiry" \ "rights" \ "@expiredAt").headOption.map(_.text.toString)
//      val scheduledExpiry = (parsedQuizJson.xml \ "expiry" \ "rights" \ "@scheduledExpiry").headOption.map(_.text.toString)
//      isExpired must equalTo(Some("true"))
//      expiredAt must equalTo(Some("2014-01-28T00:00:00.000Z"))
//      scheduledExpiry must equalTo(None)
//    }
//    "parse commercial expiry correctly" in {
//      val isExpired = (parsedQuizJson.xml \ "expiry" \ "commercial" \ "@expired").headOption.map(_.text.toString)
//      val expiredAt = (parsedQuizJson.xml \ "expiry" \ "commercial" \ "@expiredAt").headOption.map(_.text.toString)
//      val scheduledExpiry = (parsedQuizJson.xml \ "expiry" \ "commercial" \ "@scheduledExpiry").headOption.map(_.text.toString)
//      isExpired must equalTo(Some("true"))
//      expiredAt must equalTo(Some("2015-10-01T00:00:00.000Z"))
//      scheduledExpiry must equalTo(None)
//    }
  }



}
