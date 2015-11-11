package services.migration.r2ToFlexConversion

import com.lambdaworks.jacks.JacksMapper
import play.Logger


object R2ToFlexArticleConversion {

  def jsonMap(json : String) : Map[String, Any] = {
    JacksMapper.readValue[Map[String, Any]](json)
  }

  def parseLiveData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexArticleConversion(json, true)
    Logger.debug(s"Produced live article content XML:\n" + parsed.xml.toString())
    parsed
  }
  def parseDraftData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexArticleConversion(json, false)
    Logger.debug(s"Produced draft article content XML:\n" + parsed.xml.toString())
    parsed
  }
}

class R2ToFlexArticleConversion(jsonMap : Map[String, Any], parseLiveData : Boolean)
  extends R2ToFlexContentConversion(jsonMap, parseLiveData){

  import scala.language.postfixOps

  override lazy val live = getFacetFromMap("live")

  override lazy val draft = getFacetFromMap("draft")


  private def stillImageUrl = getAsString("stillImageUrl")


  private def embeddable = getAsString("embeddable").map(_.toBoolean)


  private def ukOnly = getAsString("ukOnly")

  private def syndicateEncodings = getAsString("syndicateEncodings").map(_.toBoolean)

  private def explicit = getAsString("explicit").map(_.toBoolean).map(_.toString)


  override lazy val xml = ???

}