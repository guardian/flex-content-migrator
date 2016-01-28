package services.migration.r2ToFlexConversion

import java.io.File

import org.specs2.mock.Mockito
import org.specs2.mutable.Specification

class R2ToFlexArticleConversionSpec extends Specification with Mockito {


  "R2ToFlexArticleConversion" should {
    def r2Json(path : String= "/migration/r2article.json") : Map[String, Any] = {
      val filePath = getClass.getResource(path).getFile
      val fileAsString = scala.io.Source.fromFile(new File(filePath)).getLines.reduceLeft(_+_)
      R2ToFlexArticleConversion.jsonMap(fileAsString)
    }
    
    lazy val parsedArticleJson = R2ToFlexArticleConversion.parseDraftData(r2Json())

    "accept R2 json" in {
      parsedArticleJson mustNotEqual null
    }
    "produce xml with article tag" in {
      val xml = parsedArticleJson.xml
      xml.isEmpty must equalTo(false)
      xml.toString must startWith("<article")
      xml.toString must endWith("</article>")
    }
    "parse page ID correctly" in {
      val r2PageId =  parsedArticleJson.xml \ "originalR2PageId"
      r2PageId.text.toString must equalTo("1393464")
    }
    "parse content ID correctly" in {
      val r2ContentId =  parsedArticleJson.xml \ "originalR2ContentId"
      r2ContentId.text.toString must equalTo("362083268")
    }
    "parse cms path correctly" in {
      val cmsPath = parsedArticleJson.xml \ "@cms-path"
      cmsPath.text.toString must equalTo("commentisfree/2010/apr/30/the-liberal-moment-has-come")
    }
    "parse web publication time correctly" in {
      val webPubTime = parsedArticleJson.xml \ "@web-publication-date"
      webPubTime.text.toString must equalTo("2010-04-30T18:43:35.000+01:00")
    }
    "parse created-date correctly" in {
      val createdDate = parsedArticleJson.xml \ "@created-date"
      createdDate.text.toString must equalTo("2010-04-30T18:43:31.000+01:00")
    }
    "parse modified-date correctly" in {
      val createdDate = parsedArticleJson.xml \ "@modified-date"
      createdDate.text.toString must equalTo("2010-05-04T16:03:01.000+01:00")
    }
    "parse created-user correctly" in {
      val expiry = parsedArticleJson.xml \ "@created-user"
      expiry.text.toString must equalTo("OSD Feed")
    }
    "parse tags correctly" in {
      val tags = (parsedArticleJson.xml \ "tags" \ "tag").map(t => t \ "@id").map(_.text.toString)
      tags.size must equalTo (16)
      tags must contain("37290")
      tags must contain("19801")
      tags must contain("16674")
      tags must contain("16600")
      tags must contain("35858")
      tags must contain("10692")
      tags must contain("9243")
      tags must contain("9374")
      tags must contain("19987")
      tags must contain("15082")
      tags must contain("19966")
      tags must contain("11396")
      tags must contain("22736")
      tags must contain("8791")
      tags must contain("26903")
      tags must contain("2")

    }
    "parse headline correctly" in {
      val headline = ( parsedArticleJson.xml  \ "headline").text.toString
      headline must equalTo("General election 2010: The liberal moment has come")
    }
    "parse linktext correctly" in {
      val linkText = ( parsedArticleJson.xml  \ "linktext").text.toString
      linkText must contain("General election 2010: The liberal moment has come")
    }
    "parse trail text correctly" in {
      val trailtext = ( parsedArticleJson.xml  \ "trail").text.toString
      trailtext must contain("<p><strong>Editorial:</strong> If the Guardian had a vote it would be cast enthusiastically for the Liberal Democrats.")
    }
    "parse pageNumber" in {
      val pageNumber = ( parsedArticleJson.xml  \ "@on-page").text.toString
      pageNumber must equalTo("38")
    }
    "parse body text correctly" in {
      val body = ( parsedArticleJson.xml  \ "body").text.toString
      body must startWith("<p>Citizens have votes. Newspapers do not. However, if the Guardian had a vote in the 2010 general election it would be cast enthusiastically for the Liberal Democrats.")
    }
    "parse rights correctly" in {
      val syndicationAggregate  = (parsedArticleJson.xml \ "rights" \ "@syndicationAggregate").headOption.map(_.text.toString.toBoolean)
      val subscriptionDatabases = (parsedArticleJson.xml \ "rights" \ "@subscriptionDatabases").headOption.map(_.text.toString.toBoolean)
      val developerCommunity    = (parsedArticleJson.xml \ "rights" \ "@developerCommunity").headOption.map(_.text.toString.toBoolean)
      syndicationAggregate must equalTo(Some(true))
      subscriptionDatabases must equalTo(Some(true))
      developerCommunity must equalTo(Some(true))
    }
    "second article" in {
      val xml = R2ToFlexArticleConversion.parseDraftData(r2Json("/migration/r2article2.json")).xml
      (xml \ "@enable-comments").text.toString must equalTo("true")
      (xml \ "@premoderation").text.toString must equalTo("false")
      (xml \ "@comment-expiry-date").text.toString must equalTo("2008-09-14T19:35:01.000+01:00")
      (xml \ "@issue-date").text.toString must equalTo("2008-09-11T00:00:00.000+01:00")
      (xml \ "@book-code").text.toString must equalTo("gdn")
      (xml \ "@section-code").text.toString must equalTo("fam")
      (xml \ "@star-rating").text.toString must equalTo("3")
    }
    "article with picture" in {
      val xml = R2ToFlexArticleConversion.parseDraftData(r2Json("/migration/r2article_withPicture.json")).xml
      (xml \ "main-picture" \ "@media-id").text.toString must equalTo("gu-image-338491299")
      (xml \ "main-picture" \ "@image-id").text.toString must equalTo("338444726")
      (xml \ "main-picture" \ "caption").text.toString must equalTo("Outer caption")
      (xml \ "main-picture" \ "altText").text.toString must equalTo("Outer alt")
    }
    "article with embed" in {
      val xml = R2ToFlexArticleConversion.parseLiveData(r2Json("/migration/r2article_inbodyElements.json")).xml
      val embeds = (xml \ "embeds" \ "embed")
      embeds.size must equalTo(16)
      //check the pictures
      (embeds(0) \ "@offset").text must equalTo("75")
      (embeds(1) \ "@offset").text must equalTo("715")

      (embeds(0) \ "picture" \ "@image-id").text must equalTo("399237243")
      (embeds(0) \ "picture" \ "@media-id").text must equalTo("gu-image-399326373")
      (embeds(0) \ "picture" \ "altText").text must equalTo("Marcelline Soton Akouegninou, Benin, clothes shop")
      (embeds(0) \ "picture" \ "caption").text must equalTo("Marcelline Soton Akouegninou, Benin, clothes shop Photograph: Care International")

      //check the videos
      (embeds(14) \ "@offset").text must equalTo("197925")
      (embeds(14) \ "videopage" \ "@pageid").text must equalTo("1844787")
      (embeds(14) \ "videopage" \ "@caption").text must equalTo("Andrew Mitchell insists CCTV clears him over Plebgate")

      (embeds(15) \ "@offset").text must equalTo("203809")
      (embeds(15) \ "objectembed" \ "@caption").text must equalTo("Listen on Spotify to 60 years' worth of hits. Please note! The Beatles would take the slot for 1963, with From Me To You, but the Beatles aren't on Spotify.")
      (embeds(15) \ "objectembed").text must startWith("<iframe src=")

    }

  }





}
