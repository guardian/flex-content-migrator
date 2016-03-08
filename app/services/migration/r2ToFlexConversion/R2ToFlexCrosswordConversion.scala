package services.migration.r2ToFlexConversion

import com.lambdaworks.jacks.JacksMapper
import play.Logger


object R2ToFlexCrosswordConversion {

  def jsonMap(json : String) : Map[String, Any] = {
    JacksMapper.readValue[Map[String, Any]](json)
  }

  def parseLiveData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexCrosswordConversion(json, true)
    Logger.debug(s"Produced live crossword content XML:\n" + parsed.xml.toString())
    parsed
  }
  def parseDraftData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexCrosswordConversion(json, false)
    Logger.debug(s"Produced draft crossword content XML:\n" + parsed.xml.toString())
    parsed
  }
}

class R2ToFlexCrosswordConversion(jsonMap : Map[String, Any], parseLiveData : Boolean)
  extends R2ToFlexContentConversion(jsonMap, parseLiveData){

  import scala.language.postfixOps

  override lazy val live = getFacetFromMap("live")

  override lazy val draft = getFacetFromMap("draft")
  override lazy val xml = {
    <crossword story-bundle={storyBundleId orNull}
       cms-path={cmsPath orNull}
       created-date={createdDate orNull} created-user={createdBy orNull}
       modified-date={modifiedDate orNull}
       web-publication-date={webPublicationDate orNull}>

      <tags>{for(tag <- fullTags) yield <tag id={tag.id} type={tag.tagType}/> }</tags>

      {r2PageId.map( pageId => <originalR2PageId>{pageId}</originalR2PageId>) orNull}
      {r2ContentId.map( contentId => <originalR2ContentId>{contentId}</originalR2ContentId>) orNull}
      {headline.map(h => <headline>{h}</headline>) orNull}
      {linktext.map(l => <linktext>{l}</linktext>) orNull}
      {trailtext.map(t => <trail>{t}</trail>) orNull}
    </crossword>
  }
}