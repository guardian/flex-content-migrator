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
      storyBundleId.text.toString must equalTo("49195")       //TODO: using pageID: this needs some thought
    }
    "parse cms path correctly" in {
      val cmsPath = parsedGalleryJson.xml \ "@cms-path"
      cmsPath.text.toString must equalTo("news/gallery/2007/jul/27/internationalnews1")
    }
    "parse web publication time correctly" in {
      val webPubTime = parsedGalleryJson.xml \ "@web-publication-date"
      webPubTime.text.toString must equalTo("200707271652")
    }
    "parse created-date correctly" in {
      val createdDate = parsedGalleryJson.xml \ "@created-date"
      createdDate.text.toString must equalTo("200707271446")
    }
    "parse modified-date correctly" in {
      val createdDate = parsedGalleryJson.xml \ "@modified-date"
      createdDate.text.toString must equalTo("200802081640")
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
      val trailPicture = parsedGalleryJson.xml \ "trail-picture"
      trailPicture.toString must equalTo("<trail-picture image-id=\"332443868\"/>")
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
      expiredAt must equalTo(Some("201401280000"))
      scheduledExpiry must equalTo(None)
    }
    "parse commercial expiry correctly" in {
      val isExpired = (parsedGalleryJson.xml \ "expiry" \ "commercial" \ "@expired").headOption.map(_.text.toString)
      val expiredAt = (parsedGalleryJson.xml \ "expiry" \ "commercial" \ "@expiredAt").headOption.map(_.text.toString)
      val scheduledExpiry = (parsedGalleryJson.xml \ "expiry" \ "commercial" \ "@scheduledExpiry").headOption.map(_.text.toString)
      isExpired must equalTo(Some("true"))
      expiredAt must equalTo(Some("201510010000"))
      scheduledExpiry must equalTo(None)
    }
  }


}
