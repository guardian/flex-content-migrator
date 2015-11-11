package services.migration.r2ToFlexConversion

import java.io.File

import org.specs2.mutable.Specification

class R2ToFlexAudioConversionSpec extends Specification  {



  "R2ToFlexAudioConversion" should {
    def r2Json(path : String= "/migration/r2audio.json") : Map[String, Any] = {
      val filePath = getClass.getResource(path).getFile
      val fileAsString = scala.io.Source.fromFile(new File(filePath)).getLines.reduceLeft(_+_)
      R2ToFlexAudioConversion.jsonMap(fileAsString)
    }

    lazy val parsedAudioJson = R2ToFlexAudioConversion.parseDraftData(r2Json())

    "accept R2 json" in {
      parsedAudioJson mustNotEqual null
    }
    "produce xml with picture tag" in {
      val xml = parsedAudioJson.xml
      xml.isEmpty must equalTo(false)
      xml.toString must startWith("<audio")
      xml.toString must endWith("</audio>")
    }
    "parse page ID correctly" in {
      val r2PageId =  parsedAudioJson.xml \ "originalR2PageId"
      r2PageId.text.toString must equalTo("1766235")
    }
    "parse content ID correctly" in {
      val r2ContentId =  parsedAudioJson.xml \ "originalR2ContentId"
      r2ContentId.text.toString must equalTo("392304420")
    }
    "parse cms path correctly" in {
      val cmsPath = parsedAudioJson.xml \ "@cms-path"
      cmsPath.text.toString must equalTo("global-development/audio/2012/jul/02/global-development-podcast-family-planning")
    }
    "parse web publication time correctly" in {
      val webPubTime = parsedAudioJson.xml \ "@web-publication-date"
      webPubTime.text.toString must equalTo("2012-07-02T14:21:00.000+01:00")
    }
    "parse created-date correctly" in {
      val createdDate = parsedAudioJson.xml \ "@created-date"
      createdDate.text.toString must equalTo("2012-06-28T12:12:22.000+01:00")
    }
    "parse modified-date correctly" in {
      val createdDate = parsedAudioJson.xml \ "@modified-date"
      createdDate.text.toString must equalTo("2015-05-08T16:22:51.000+01:00")
    }
    "parse created-user correctly" in {
      val expiry = parsedAudioJson.xml \ "@created-user"
      expiry.text.toString must equalTo("Audio")
    }
    "parse tags correctly" in {
      val tags = (parsedAudioJson.xml \ "tags" \ "tag").map(t => t \ "@id").map(_.text.toString)
      tags.size must equalTo (15)
      tags must contain("46366")
      tags must contain("51642")

      tags must contain("39585")
      tags must contain("39847")
      tags must contain("15396")
      tags must contain("47881")
      tags must contain("9439")
      tags must contain("8798")
      tags must contain("51656")
      tags must contain("20642")
      tags must contain("45039")
      tags must contain("41130")
      tags must contain("35280")
      tags must contain("26907")
      tags must contain("4")
    }
    "parse headline correctly" in {
      val headline = ( parsedAudioJson.xml  \ "headline").text.toString
      headline must equalTo("Global development podcast: focus on family planning")
    }
    "parse linktext correctly" in {
      val linkText = ( parsedAudioJson.xml  \ "linktext").text.toString
      linkText must contain("Global development podcast: focus on family planning")
    }
    "parse trail text correctly" in {
      val xml = parsedAudioJson.xml
      val trailtext = ( parsedAudioJson.xml  \ "trail").text.toString
      trailtext must contain("<p>On 11 July London is to host a global summit on family planning.")
    }
    "parse trail picture correctly" in {
      val draftTrailPicture = parsedAudioJson.xml \ "trail-picture"
      draftTrailPicture.toString must equalTo("<trail-picture image-id=\"364479522\" media-id=\"gu-image-456667284\"/>")
    }
    "parse rights correctly" in {
      val syndicationAggregate  = (parsedAudioJson.xml \ "rights" \ "@syndicationAggregate").headOption.map(_.text.toString.toBoolean)
      val subscriptionDatabases = (parsedAudioJson.xml \ "rights" \ "@subscriptionDatabases").headOption.map(_.text.toString.toBoolean)
      val developerCommunity    = (parsedAudioJson.xml \ "rights" \ "@developerCommunity").headOption.map(_.text.toString.toBoolean)
      syndicationAggregate must equalTo(Some(true))
      subscriptionDatabases must equalTo(Some(true))
      developerCommunity must equalTo(Some(true))
    }
    "parse show notes correctly" in {
      val showNotes = (parsedAudioJson.xml \ "show-notes").text.toString
      showNotes must startWith("<p>Family planning is notoriously one of")
    }
    "parse rights expiry correctly" in {
      val isExpired = (parsedAudioJson.xml \ "expiry" \ "rights" \ "@expired").headOption.map(_.text.toString)
      val expiredAt = (parsedAudioJson.xml \ "expiry" \ "rights" \ "@expiredAt").headOption.map(_.text.toString)
      val scheduledExpiry = (parsedAudioJson.xml \ "expiry" \ "rights" \ "@scheduledExpiry").headOption.map(_.text.toString)
      isExpired must equalTo(None)
      scheduledExpiry must equalTo(None)
    }
    "parse commercial expiry correctly" in {
      val isExpired = (parsedAudioJson.xml \ "expiry" \ "commercial" \ "@expired").headOption.map(_.text.toString)
      val expiredAt = (parsedAudioJson.xml \ "expiry" \ "commercial" \ "@expiredAt").headOption.map(_.text.toString)
      val scheduledExpiry = (parsedAudioJson.xml \ "expiry" \ "commercial" \ "@scheduledExpiry").headOption.map(_.text.toString)
      isExpired must equalTo(None)
      scheduledExpiry must equalTo(None)
    }
  }

}
