package services.migration.r2ToFlexConversion

import java.io.File

import org.specs2.mock.Mockito
import org.specs2.mutable.Specification
import services.migration.quizbuilder.{Quiz, QuizImporterService}

import scala.concurrent.Future

class R2ToFlexCrosswordConversionSpec extends Specification with Mockito {

  "R2ToFlexCrosswordConversion" should {
    def r2Json(path : String= "/migration/r2crossword.json") : Map[String, Any] = {
      val filePath = getClass.getResource(path).getFile
      val fileAsString = scala.io.Source.fromFile(new File(filePath)).getLines.reduceLeft(_+_)
      R2ToFlexCrosswordConversion.jsonMap(fileAsString)
    }

    lazy val parsedCrosswordJson = R2ToFlexCrosswordConversion.parseDraftData(r2Json())


    "accept R2 json" in {
      parsedCrosswordJson mustNotEqual null
    }
    "produce xml with article tag" in {
      val xml = parsedCrosswordJson.xml
      xml.isEmpty must equalTo(false)
      xml.toString must startWith("<crossword")
      xml.toString must endWith("</crossword>")
    }
    "parse page ID correctly" in {
      val r2PageId =  parsedCrosswordJson.xml \ "originalR2PageId"
      r2PageId.text.toString must equalTo("1347330")
    }
    "parse content ID correctly" in {
      val r2ContentId =  parsedCrosswordJson.xml \ "originalR2ContentId"
      r2ContentId.text.toString must equalTo("358904996")
    }
    "parse cms path correctly" in {
      val cmsPath = parsedCrosswordJson.xml \ "@cms-path"
      cmsPath.text.toString must equalTo("crosswords/cryptic/24669")
    }
    "parse web publication time correctly" in {
      val webPubTime = parsedCrosswordJson.xml \ "@web-publication-date"
      webPubTime.text.toString must equalTo("2009-04-09T00:00:00.000+01:00")
    }
    "parse created-date correctly" in {
      val createdDate = parsedCrosswordJson.xml \ "@created-date"
      createdDate.text.toString must equalTo("2010-02-03T14:04:07.000Z")
    }
    "parse modified-date correctly" in {
      val createdDate = parsedCrosswordJson.xml \ "@modified-date"
      createdDate.text.toString must equalTo("2010-02-10T09:42:57.000Z")
    }
    "parse created-user correctly" in {
      val expiry = parsedCrosswordJson.xml \ "@created-user"
      expiry.text.toString must equalTo("Travel_Editor")
    }
    "parse tags correctly" in {
      val tags = (parsedCrosswordJson.xml \ "tags" \ "tag").map(t => t \ "@id").map(_.text.toString)
      val types = (parsedCrosswordJson.xml \ "tags" \ "tag").map(t => t \ "@type").map(_.text.toString)

      tags.size must equalTo (5)
      tags must contain("35605")
      tags must contain("35623")
      tags must contain("35459")
      tags must contain("35610")
      tags must contain("2")
      
      types must contain("Contributor")
      types must contain("Publication")
    }
    "parse headline correctly" in {
      val headline = ( parsedCrosswordJson.xml  \ "headline").text.toString
      headline must equalTo("Cryptic crossword No 24,669")
    }
    "parse linktext correctly" in {
      val linkText = ( parsedCrosswordJson.xml  \ "linktext").text.toString
      linkText must contain("Cryptic crossword No 24,669")
    }
    "parse trail text correctly" in {
      val xml = parsedCrosswordJson.xml
      val trailtext = ( parsedCrosswordJson.xml  \ "trail").text.toString
      trailtext must contain("Cryptic crossword No 24,669")
    }
  }



}
