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
           created-date={createdDate orNull} created-user={createdBy orNull} modified-date={modifiedDate orNull}
           web-publication-date={webPublicationDate orNull}>

      <tags>{for(tag <- tags) yield <tag id={tag}/> }</tags>
      {r2PageId.map( pageId =>          <originalR2PageId>{pageId}</originalR2PageId>) orNull}
      {r2ContentId.map( contentId =>    <originalR2ContentId>{contentId}</originalR2ContentId>) orNull}
      {headline.map(h =>      <headline>{h}</headline>) orNull}
      {strap.map(s =>         <strap>{s}</strap>) orNull}
      {standfirst.map(s =>    <standfirst>{s}</standfirst>) orNull}
      {byline.map(b =>        <byline>{b}</byline>) orNull}
      {linktext.map(l =>      <linktext>{l}</linktext>) orNull}
      {trailtext.map(t =>     <trail>{t}</trail>) orNull}
      {trailPictureId.map(tp =>     <trail-picture image-id={tp} media-id={trailPictureMediaId orNull} />) orNull}
      {largeTrailPictureId.map(ltp =>     <large-trail-picture image-id={ltp} media-id={largeTrailPictureMediaId orNull} />) orNull}
      {if(!associatedPictures.isEmpty)
      <pictures>
        {associatedPictures.map{pic => {
        pic.get("id").map{pid =>
          <picture image-id={pid}>
            {pic.get("caption").map{caption => <caption>{caption}</caption>} orNull}
          </picture>} orNull
      }}
        }
      </pictures>
      }
      <rights syndicationAggregate={syndicationAggregateFn orNull} subscriptionDatabases={subscriptionDatabasesFn orNull} developerCommunity={developerCommunityFn orNull} />
      {
      val rightsExpiry = getRightsExpiry
      val commercialExpiry = getCommercialExpiry
      if(rightsExpiry.isDefined || commercialExpiry.isDefined){
        <expiry>
          {rightsExpiry.map(info => <rights expired={info._1.getOrElse(false).toString}
                                            expiredAt={info._2 orNull}
                                            scheduledExpiry={info._3 orNull}/>)         orNull}
          {commercialExpiry.map(info => <commercial expired={info._1.getOrElse(false).toString}
                                                    expiredAt={info._2 orNull}
                                                    scheduledExpiry={info._3 orNull}/>) orNull}
        </expiry>
      }
      }
    </crossword>
  }
}