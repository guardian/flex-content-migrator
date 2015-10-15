package services.migration

import java.io.File

import org.specs2.mutable.Specification

class R2ToFlexConversionSpec extends Specification  {

  "R2ToFlexGalleryConversion" should {
    def r2Json(path : String= "/migration/r2gallery.json") : Map[String, Any] = {
      val filePath = getClass.getResource(path).getFile
      val fileAsString = scala.io.Source.fromFile(new File(filePath)).getLines.reduceLeft(_+_)
      R2ToFlexGalleryConversion.jsonMap(fileAsString)
    }

    lazy val parsedGalleryJson = R2ToFlexGalleryConversion.parseDraftData(r2Json())

    "accept R2 json" in {
      parsedGalleryJson mustNotEqual null
    }
    "produce xml with gallery tag" in {
      val xml = parsedGalleryJson.xml
      xml.isEmpty must equalTo(false)
      xml.toString must startWith("<gallery")
      xml.toString must endWith("</gallery>")
    }
    "parse page ID correctly" in {
      val r2PageId =  parsedGalleryJson.xml \ "originalR2PageId"
      r2PageId.text.toString must equalTo("49195")
    }
    "parse content ID correctly" in {
      val r2ContentId =  parsedGalleryJson.xml \ "originalR2ContentId"
      r2ContentId.text.toString must equalTo("330288569")
    }
    "parse story bundle ID correctly" in {
      val storyBundleId =  parsedGalleryJson.xml \ "@story-bundle"
      storyBundleId.text.toString must equalTo("32233")
    }
    "parse cms path correctly" in {
      val cmsPath = parsedGalleryJson.xml \ "@cms-path"
      cmsPath.text.toString must equalTo("news/gallery/2007/jul/27/internationalnews1")
    }
    "parse web publication time correctly" in {
      val webPubTime = parsedGalleryJson.xml \ "@web-publication-date"
      webPubTime.text.toString must equalTo("2007-07-27T17:52:21.000+01:00")
    }
    "parse created-date correctly" in {
      val createdDate = parsedGalleryJson.xml \ "@created-date"
      createdDate.text.toString must equalTo("2007-07-27T15:46:23.000+01:00")
    }
    "parse modified-date correctly" in {
      val createdDate = parsedGalleryJson.xml \ "@modified-date"
      createdDate.text.toString must equalTo("2008-02-08T16:40:11.000Z")
    }
    "parse created-user correctly" in {
      val expiry = parsedGalleryJson.xml \ "@created-user"
      expiry.text.toString must equalTo("Travel Editor")
    }
    "parse tags correctly" in {
      val tags = (parsedGalleryJson.xml \ "tags" \ "tag").map(t => t \ "@id").map(_.text.toString)
      tags.size must equalTo (4)
      tags must contain("9234")
      tags must contain("8783")
      tags must contain("26904")
      tags must contain("4")
    }
    "parse headline correctly" in {
      val headline = ( parsedGalleryJson.xml  \ "headline").text.toString
      headline must equalTo("Red Mosque reopens")
    }
    "parse linktext correctly" in {
      val linkText = ( parsedGalleryJson.xml  \ "linktext").text.toString
      linkText must contain("Red Mosque reopens")
    }
    "parse trail text correctly" in {
      val xml = parsedGalleryJson.xml
      val trailtext = ( parsedGalleryJson.xml  \ "trail").text.toString
      trailtext must contain("A suspected suicide bomber killed 11 people and injured scores more following renewed violence at Islamabad's Red Mosque")
    }
    "parse trail picture correctly" in {
      val draftTrailPicture = parsedGalleryJson.xml \ "trail-picture"
      draftTrailPicture.toString must equalTo("<trail-picture image-id=\"332443868\" media-id=\"gu-image-1234\"/>")

      val liveTrailPictureMissingMediaId = R2ToFlexGalleryConversion.parseLiveData(r2Json()).xml \ "trail-picture"
      liveTrailPictureMissingMediaId.toString must equalTo("<trail-picture image-id=\"332443868\"/>")
    }
    "parse pictures correctly" in {
      val additionalPictures = parsedGalleryJson.xml \ "pictures" \ "picture"
      additionalPictures.size must equalTo(16) //8 pictures and 8 thumbnails

      //first picture and thumbnail
      {
        val thePic = additionalPictures.head
        val theThumb = additionalPictures.tail.head

        (thePic \ "@image-id").text.toString must equalTo("330288634")
        (thePic\ "@media-id").text.toString must equalTo("gu-image-330288636")  //note: draft picture Id
        ((thePic \ "caption").text.toString ) must startWith("July 27 2007: Hundreds of religious students occupy the Red Mosque")

        (theThumb \ "@image-id").text.toString must equalTo("330288635")
        (theThumb\ "@media-id").text.toString must equalTo("gu-image-330288636")
        ((theThumb \ "caption").text.toString ) must startWith("July 27 2007: Hundreds of religious students occupy the Red Mosque")
      }

      //second picture and thumbnail
      {
        val thePic = additionalPictures.tail.tail.head
        val theThumb = additionalPictures.tail.tail.tail.head

        (thePic \ "@image-id").text.toString must equalTo("330288643")
        (thePic\ "@media-id").text.toString must equalTo("gu-image-330288645")
        ((thePic \ "caption").text.toString ) must startWith("July 27 2007: Pakistani religious students watch")

        (theThumb \ "@image-id").text.toString must equalTo("330288644")
        (theThumb\ "@media-id").text.toString must equalTo("gu-image-330288645")
        ((theThumb \ "caption").text.toString ) must startWith("July 27 2007: Pakistani religious students watch")
      }
    }
    "parse rights correctly" in {
      val syndicationAggregate  = (parsedGalleryJson.xml \ "rights" \ "@syndicationAggregate").headOption.map(_.text.toString.toBoolean)
      val subscriptionDatabases = (parsedGalleryJson.xml \ "rights" \ "@subscriptionDatabases").headOption.map(_.text.toString.toBoolean)
      val developerCommunity    = (parsedGalleryJson.xml \ "rights" \ "@developerCommunity").headOption.map(_.text.toString.toBoolean)
      syndicationAggregate must equalTo(Some(false))
      subscriptionDatabases must equalTo(Some(false))
      developerCommunity must equalTo(Some(true))
    }
    "parse rights expiry correctly" in {
      val isExpired = (parsedGalleryJson.xml \ "expiry" \ "rights" \ "@expired").headOption.map(_.text.toString)
      val expiredAt = (parsedGalleryJson.xml \ "expiry" \ "rights" \ "@expiredAt").headOption.map(_.text.toString)
      val scheduledExpiry = (parsedGalleryJson.xml \ "expiry" \ "rights" \ "@scheduledExpiry").headOption.map(_.text.toString)
      isExpired must equalTo(Some("true"))
      expiredAt must equalTo(Some("2014-01-28T00:00:00.000Z"))
      scheduledExpiry must equalTo(None)
    }
    "parse commercial expiry correctly" in {
      val isExpired = (parsedGalleryJson.xml \ "expiry" \ "commercial" \ "@expired").headOption.map(_.text.toString)
      val expiredAt = (parsedGalleryJson.xml \ "expiry" \ "commercial" \ "@expiredAt").headOption.map(_.text.toString)
      val scheduledExpiry = (parsedGalleryJson.xml \ "expiry" \ "commercial" \ "@scheduledExpiry").headOption.map(_.text.toString)
      isExpired must equalTo(Some("true"))
      expiredAt must equalTo(Some("2015-10-01T00:00:00.000Z"))
      scheduledExpiry must equalTo(None)
    }
  }


  "R2ToFlexCartoonConversion" should {
    def r2Json(path : String= "/migration/r2cartoon.json") : Map[String, Any] = {
      val filePath = getClass.getResource(path).getFile
      val fileAsString = scala.io.Source.fromFile(new File(filePath)).getLines.reduceLeft(_+_)
      R2ToFlexCartoonConversion.jsonMap(fileAsString)
    }

    lazy val parsedCartoonJson = R2ToFlexCartoonConversion.parseDraftData(r2Json())

    "accept R2 json" in {
      parsedCartoonJson mustNotEqual null
    }
    "produce xml with picture tag" in {
      val xml = parsedCartoonJson.xml
      xml.isEmpty must equalTo(false)
      xml.toString must startWith("<picture")
      xml.toString must endWith("</picture>")
    }
    "parse page ID correctly" in {
      val r2PageId =  parsedCartoonJson.xml \ "originalR2PageId"
      r2PageId.text.toString must equalTo("1372093")
    }
    "parse content ID correctly" in {
      val r2ContentId =  parsedCartoonJson.xml \ "originalR2ContentId"
      r2ContentId.text.toString must equalTo("360443642")
    }
    "parse story bundle ID correctly" in {
      val storyBundleId =  parsedCartoonJson.xml \ "@story-bundle"
      storyBundleId.text.toString must equalTo("32233")
    }
    "parse cms path correctly" in {
      val cmsPath = parsedCartoonJson.xml \ "@cms-path"
      cmsPath.text.toString must equalTo("world/picture/2010/feb/04/pope-benedict-xvi-italy")
    }
    "parse web publication time correctly" in {
      val webPubTime = parsedCartoonJson.xml \ "@web-publication-date"
      webPubTime.text.toString must equalTo("2010-02-04T00:00:00.000Z")
    }
    "parse created-date correctly" in {
      val createdDate = parsedCartoonJson.xml \ "@created-date"
      createdDate.text.toString must equalTo("2010-03-15T17:14:25.000Z")
    }
    "parse modified-date correctly" in {
      val createdDate = parsedCartoonJson.xml \ "@modified-date"
      createdDate.text.toString must equalTo("2010-04-03T03:17:36.000+01:00")
    }
    "parse created-user correctly" in {
      val expiry = parsedCartoonJson.xml \ "@created-user"
      expiry.text.toString must equalTo("Jo Blason")
    }
    "parse tags correctly" in {
      val tags = (parsedCartoonJson.xml \ "tags" \ "tag").map(t => t \ "@id").map(_.text.toString)
      tags.size must equalTo (13)
      tags must contain("29660")
      tags must contain("9318")
      tags must contain("30697")
      tags must contain("33818")
      tags must contain("9234")
      tags must contain("10815")
      tags must contain("10529")
      tags must contain("2")
      tags must contain("4")
      tags must contain("48041")
      tags must contain("16600")
      tags must contain("55510")
      tags must contain("36985")
    }
    "parse headline correctly" in {
      val headline = ( parsedCartoonJson.xml  \ "headline").text.toString
      headline must equalTo("Eyewitness: Balancing act at the Vatican")
    }
    "parse linktext correctly" in {
      val linkText = ( parsedCartoonJson.xml  \ "linktext").text.toString
      linkText must contain("Eyewitness: Balancing act at the Vatican")
    }
    "parse trail text correctly" in {
      val xml = parsedCartoonJson.xml
      val trailtext = ( parsedCartoonJson.xml  \ "trail").text.toString
      trailtext must contain("Photographs from the Guardia")
    }
    "parse trail picture correctly" in {
      val draftTrailPicture = parsedCartoonJson.xml \ "trail-picture"
      draftTrailPicture.toString must equalTo("<trail-picture image-id=\"360443493\" media-id=\"gu-image-361106498\"/>")
    }
    "parse pictures correctly" in {
      val additionalPictures = parsedCartoonJson.xml \ "pictures" \ "picture"
      additionalPictures.size must equalTo(2) //main picture and large picture

      //the two pictures
      {
        val thePicMain = additionalPictures.head
        val thePicLarge = additionalPictures.tail.head

        (thePicMain \ "@image-id").text.toString must equalTo("360443494")
        (thePicMain\ "@media-id").text.toString must equalTo("gu-image-29847")
        ((thePicMain \ "caption").text.toString ) must startWith("Vatican: Pope Benedict XVI watches")

        (thePicLarge \ "@image-id").text.toString must equalTo("360443495")
        (thePicLarge\ "@media-id").text.toString must equalTo("gu-image-29847") //should share the same media id as the main picture
        ((thePicLarge \ "caption").text.toString ) must startWith("Vatican: Pope Benedict XVI watches")
      }

    }
    "parse rights correctly" in {
      val syndicationAggregate  = (parsedCartoonJson.xml \ "rights" \ "@syndicationAggregate").headOption.map(_.text.toString.toBoolean)
      val subscriptionDatabases = (parsedCartoonJson.xml \ "rights" \ "@subscriptionDatabases").headOption.map(_.text.toString.toBoolean)
      val developerCommunity    = (parsedCartoonJson.xml \ "rights" \ "@developerCommunity").headOption.map(_.text.toString.toBoolean)
      syndicationAggregate must equalTo(None)
      subscriptionDatabases must equalTo(None)
      developerCommunity must equalTo(None)
    }
    "parse rights expiry correctly" in {
      val isExpired = (parsedCartoonJson.xml \ "expiry" \ "rights" \ "@expired").headOption.map(_.text.toString)
      val expiredAt = (parsedCartoonJson.xml \ "expiry" \ "rights" \ "@expiredAt").headOption.map(_.text.toString)
      val scheduledExpiry = (parsedCartoonJson.xml \ "expiry" \ "rights" \ "@scheduledExpiry").headOption.map(_.text.toString)
      isExpired must equalTo(None)
      scheduledExpiry must equalTo(None)
    }
    "parse commercial expiry correctly" in {
      val isExpired = (parsedCartoonJson.xml \ "expiry" \ "commercial" \ "@expired").headOption.map(_.text.toString)
      val expiredAt = (parsedCartoonJson.xml \ "expiry" \ "commercial" \ "@expiredAt").headOption.map(_.text.toString)
      val scheduledExpiry = (parsedCartoonJson.xml \ "expiry" \ "commercial" \ "@scheduledExpiry").headOption.map(_.text.toString)
      isExpired must equalTo(None)
      scheduledExpiry must equalTo(None)
    }
  }

}
