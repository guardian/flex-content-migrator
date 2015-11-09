package services.migration.r2ToFlexConversion

import com.lambdaworks.jacks.JacksMapper
import play.Logger


object R2ToFlexAudioConversion {

  def jsonMap(json : String) : Map[String, Any] = {
    JacksMapper.readValue[Map[String, Any]](json)
  }

  def parseLiveData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexVideoConversion(json, true)
    Logger.debug(s"Produced live video content XML:\n" + parsed.xml.toString())
    parsed
  }
  def parseDraftData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexVideoConversion(json, false)
    Logger.debug(s"Produced draft video content XML:\n" + parsed.xml.toString())
    parsed
  }
}

class R2ToFlexAudioConversion(jsonMap : Map[String, Any], parseLiveData : Boolean)
  extends R2ToFlexContentConversion(jsonMap, parseLiveData){

  import scala.language.postfixOps

  private def videoDuration : Option[(String, String)] = {
    for( mins <- getAs[Int]("durationMinutes"); secs <- getAs[Int]("durationSeconds"))
      yield (mins.toString, secs.toString)
  }

  private def videoDimension : Option[(Option[String], Option[String])] = {
    for( width <- getAs[Int]("originalWidth"); height <- getAs[Int]("originalHeight"))
      yield (Some(width.toString), Some(height.toString))
  }

  private def blockVideoAds : Option[String] =
    getAsString("blockVideoAds").map(_.toLowerCase match {
      case "true" =>  "yes"
      case _ =>       "no"
    })

  private def videoSource = getAsString("source")

  private def encodings : List[Map[String, String]] = {
    val encodings: List[Map[String, Any]] = getAsMaps("videoEncodings", liveOrDraft).getOrElse(Nil)
    encodings.map(_.map(entry => entry._1 -> entry._2.toString))
  }

  private def stillImageUrl = getAsString("stillImageUrl")

  private def cdnId = getAsString("cdnIdentifier")

  private def embeddable = getAsString("embeddable").map(_.toBoolean)


  private def ukOnly = getAsString("ukOnly")

  private def syndicateEncodings = getAsString("syndicateEncodings").map(_.toBoolean)

  private def explicit = getAsString("explicit").map(_.toBoolean).map(_.toString)

  override lazy val live = getFacetFromMap("liveVideo")

  override lazy val draft = getFacetFromMap("draftVideo")

  override lazy val xml = ??? //TODO
}