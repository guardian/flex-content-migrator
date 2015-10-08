package services.migration

import java.text.SimpleDateFormat
import com.lambdaworks.jacks.JacksMapper
import play.Logger

import scala.xml.Elem

object R2CMSPathCleaner{
  val UnwatedPrefixes = List("/Guardian/", "/Saferjobs/")

  def cleanPath(r2Path : String): String = {
    def cleanUnwantedPrefix(path : String, prefix:String) = if(path.startsWith(prefix)) path.replace(prefix, "") else path
    UnwatedPrefixes.foldLeft(r2Path)(cleanUnwantedPrefix(_,_))
  }

}

abstract class R2ToFlexContentConversion(jsonMap : Map[String, Any], parseLiveData : Boolean = false) {

  assert(jsonMap != null)

  val xml: Elem
  val live : Map[String, Any]
  val draft : Map[String, Any]

  val liveOrDraft = if (parseLiveData) live else draft

  protected def getFacetFromMap(facetName : String) : Map[String, Any] ={
    val data = jsonMap.get(facetName)
    data match {
      case Some(videoMap) => videoMap.asInstanceOf[Map[String, Any]]
      case _ => throw new IllegalArgumentException("Content without valid " + facetName + " facet")
    }
  }



  protected def getAsString(fieldName : String, from : Map[String,Any] = liveOrDraft) : Option[String] = {
    from.get(fieldName).map(_.toString)
  }
  protected def getAs[T](fieldName : String, from : Map[String,Any] = liveOrDraft) : Option[T] = {
    from.get(fieldName).map(_.asInstanceOf[T])
  }
  protected def getAsMap = getAs[Map[String, Any]] _

  protected def getAsMaps = getAs[List[Map[String, Any]]] _


  protected def storyBundleId = {
    val storyBundleId = getAsString("storyBundleId", draft) //NOTE: this field ALWAYS comes from draft
    storyBundleId match {
      case Some(x) => Some(x)
      case None => {
        //Many historical articles do not have a story bundle ID. Since Flex requires it we use the r2 page id
        r2PageId.map(r2PageId => r2PageId)
      }
    }
  }

  protected def r2PageId = getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("id", p.head))

  protected def r2ContentId = getAsString("id")

  protected def cmsPath =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsMap("cmsPath", p.head)).
      flatMap(cms => getAsString("path", cms).map(R2CMSPathCleaner.cleanPath(_)))

  protected def notes = getAsString("notes")

  protected def slug = getAsString("editedSlug", draft) //NOTE: seems this field ALWAYS comes from draft

  protected def headline = getAsString("headline")

  protected def strap = getAsString("strap")

  protected def byline = getAsString("byline")

  protected def linktext =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("linkText", p.head))

  protected def trailtext =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("trailText", p.head)) match {
      case Some(s : String) if (!s.isEmpty) => Some(s)
      case _ => standfirst //substitute standfirst if there is no trail text
    }

  protected def standfirst = getAsString("standfirst")

  protected def tags : List[String] = {
    getAs[List[Any]]("tags").getOrElse(Nil).map(_.toString)
  }

  protected def thumbnailImageUrl = getAsString("thumbnailImageUrl")


  protected def trailPictureId =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("defaultTrailPictureImgId", p.head))

  protected def largeTrailPictureId =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("largeTrailPictureImgId", p.head))

  protected def createdBy =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("createdBy", p.head))


  protected val dateFormatterXml = new SimpleDateFormat("yyyyMMdd");
  protected val dateTimeFormatterXml = new SimpleDateFormat("yyyyMMddHHmm");


  protected def scheduledExpiry = getAsString("scheduledExpiryDate").
    map( s => javax.xml.bind.DatatypeConverter.parseDateTime(s).getTime).
    map(dateFormatterXml.format _ )

  protected def createdDate =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("createdOn", p.head)).
      map( s => javax.xml.bind.DatatypeConverter.parseDateTime(s).getTime).map(dateTimeFormatterXml.format _ )

  protected def modifiedDate =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("modifiedOn", p.head)).
      map( s => javax.xml.bind.DatatypeConverter.parseDateTime(s).getTime).map(dateTimeFormatterXml.format _ )

  protected def webPublicationDate =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("webPublicationTime", p.head)).
      map( s => javax.xml.bind.DatatypeConverter.parseDateTime(s).getTime).map(dateTimeFormatterXml.format _ )

  lazy val xmlCmsPath = cmsPath


  protected def additionalPictures : List[Map[String,String]] = {
    val platformPictures: List[Map[String, Any]] = getAsMaps("platformPictures", liveOrDraft).getOrElse(Nil)
    platformPictures.map{pic => {
      val id: Option[String] = getAsMap("image", pic).flatMap(_.get("id")).map(_.toString)
      val caption : Option[String] = getAsMap("image", pic).flatMap(_.get("caption")).map(_.toString)
      if(id.isDefined){
        Map("id" -> id.get)  ++ caption.map(caption => Map("caption" -> caption)).getOrElse(Map())
      }
      else Map[String,String]()
    }}
  }

  protected def syndicationAggregateFn = getAsString("syndicationAggregate")
  protected def subscriptionDatabasesFn = getAsString("subscriptionDatabases")
  protected def developerCommunityFn = getAsString("developerCommunity")

  type ExpiryInfo = (Option[Boolean], Option[String], Option[String])
  protected def getRightsExpiry : Option[ExpiryInfo] = {
    val isExpired = getAsString("expired").map(_.toBoolean)
    val scheduledExpiry = getAsString("scheduledExpiryDate").map( s => javax.xml.bind.DatatypeConverter.parseDateTime(s).getTime)

    isExpired match {
      case Some(true) => Some((Some(true), scheduledExpiry.map(dateTimeFormatterXml.format _), None))
      case _ => {
        //not expired but it might be scheduled to expire
        scheduledExpiry match {
          case Some(schedule) =>{
            Some((Some(false), None, Some(dateTimeFormatterXml.format(schedule))))
          }
          case _ => None //not expired and not scheduled to expire
        }
      }
    }
  }

  protected def getCommercialExpiry : Option[ExpiryInfo] = {
    val isExpired = getAsString("expiredCommercial").map(_.toBoolean)
    val expiredAt = getAsString("commercialExpiryDate").map(javax.xml.bind.DatatypeConverter.parseDateTime(_).getTime ).map(dateTimeFormatterXml.format _)
    //commercial expiry just happens, it is not scheduled, so it is either expired (with a date) or nothing
    isExpired match {
      case Some(true) => Some((Some(true), expiredAt, None))
      case _ => None
    }
  }

}

class R2ToFlexGalleryConversion(jsonMap : Map[String, Any], parseLiveData : Boolean)
  extends R2ToFlexContentConversion(jsonMap, parseLiveData){

  import scala.language.postfixOps

  protected def explicit = getAsString("explicit").map(_.toBoolean).map(_.toString)

  override lazy val live = getFacetFromMap("live")

  override lazy val draft = getFacetFromMap("draft")

  override protected def additionalPictures : List[Map[String,String]] = {
    val platformPictures: List[Map[String, Any]] = getAsMaps("pictures", liveOrDraft).getOrElse(Nil)
    platformPictures.map{pic => {
      val id: Option[String] = getAsMap("image", pic).flatMap(_.get("id")).map(_.toString)
      val caption : Option[String] = getAsMap("image", pic).flatMap(_.get("caption")).map(_.toString)
      if(id.isDefined){
        Map("id" -> id.get)  ++ caption.map(caption => Map("caption" -> caption)).getOrElse(Map())
      }
      else Map[String,String]()
    }}
  }


  override lazy val xml = {
    <gallery story-bundle={storyBundleId orNull} cms-path={cmsPath orNull} notes={notes orNull} slug-word={slug orNull}
           explicit={explicit orNull} expiry-date={scheduledExpiry orNull}
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
      {thumbnailImageUrl.map(iu =>  <thumbnail-image-url>{iu}</thumbnail-image-url>) orNull}
      {trailPictureId.map(tp =>     <trail-picture image-id={tp} />) orNull}
      {largeTrailPictureId.map(ltp =>     <large-trail-picture image-id={ltp} />) orNull}
      {if(!additionalPictures.isEmpty)
      <pictures>
        {additionalPictures.map{pic => {
        pic.get("id").map{pid =>
          <picture image-id={pid}>
            {pic.get("caption").map{caption => <caption>{caption}</caption>} orNull}
          </picture>} orNull
      }}
        }
      </pictures>
      }
      <rights syndicationAggregate={syndicationAggregateFn orNull} subscriptionDatabases={subscriptionDatabasesFn orNull} developerCommunity={developerCommunityFn orNull} />
      //expiry of rights and commercial expiry processing
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
    </gallery>
  }
}

class R2ToFlexCartoonConversion(jsonMap : Map[String, Any], parseLiveData : Boolean)
  extends R2ToFlexGalleryConversion(jsonMap, parseLiveData){

  import scala.language.postfixOps

  <picture story-bundle={storyBundleId orNull} cms-path={cmsPath orNull} notes={notes orNull} slug-word={slug orNull}
           explicit={explicit orNull} expiry-date={scheduledExpiry orNull}
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
    {thumbnailImageUrl.map(iu =>  <thumbnail-image-url>{iu}</thumbnail-image-url>) orNull}
    {trailPictureId.map(tp =>     <trail-picture image-id={tp} />) orNull}
    {largeTrailPictureId.map(ltp =>     <large-trail-picture image-id={ltp} />) orNull}
    {if(!additionalPictures.isEmpty)
    <pictures>
      {additionalPictures.map{pic => {
      pic.get("id").map{pid =>
        <picture image-id={pid}>
          {pic.get("caption").map{caption => <caption>{caption}</caption>} orNull}
        </picture>} orNull
    }}
      }
    </pictures>
    }
    <rights syndicationAggregate={syndicationAggregateFn orNull} subscriptionDatabases={subscriptionDatabasesFn orNull} developerCommunity={developerCommunityFn orNull} />
    //expiry of rights and commercial expiry processing
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
  </picture>

}

class R2ToFlexVideoConversion(jsonMap : Map[String, Any], parseLiveData : Boolean)
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

  override lazy val xml = {
    <video story-bundle={storyBundleId orNull} cms-path={cmsPath orNull} notes={notes orNull} slug-word={slug orNull}
           uk-only={ukOnly orNull} explicit={explicit orNull} expiry-date={scheduledExpiry orNull}
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
      {videoDuration.map(d =>   <video-duration minutes={d._1} seconds={d._2}/>) orNull}
      {videoDimension.map(d =>  <video-dimension width={d._1 orNull} height={d._2 orNull}/> ) orNull}
      {blockVideoAds.map(b =>  <block-video-ads>{b}</block-video-ads>) orNull}
      {videoSource.map(vs =>  <video-source>{vs}</video-source>) orNull}
      {encodings.map{ enc => {
            <encoding>
              {enc.get("videoFormat").map(f =>      <format>{f}</format>) orNull}
              {enc.get("videoFileUrl").map(u =>     <video-file-url size-in-bytes={enc.get("sizeInBytes") orNull}>{u}</video-file-url>) orNull}
              {enc.get("width").map(w =>            <width>{w}</width>) orNull}
              {enc.get("height").map(h =>           <height>{h}</height>) orNull}
              {enc.get("durationMinutes").map(m =>  <minutes>{m}</minutes>) orNull}
              {enc.get("durationSeconds").map(s =>  <seconds>{s}</seconds>) orNull}
            </encoding>
        }}
      }
      {stillImageUrl.map(iu =>      <still-image-url>{iu}</still-image-url>) orNull}
      {thumbnailImageUrl.map(iu =>  <thumbnail-image-url>{iu}</thumbnail-image-url>) orNull}
      {cdnId.map(cdn =>             <cdn-id>{cdn}</cdn-id>) orNull}
      {embeddable.map(e =>          <embeddable>{e}</embeddable>) orNull}
      {trailPictureId.map(tp =>     <trail-picture image-id={tp} />) orNull}
      {largeTrailPictureId.map(ltp =>     <large-trail-picture image-id={ltp} />) orNull}
      {if(!additionalPictures.isEmpty)
        <pictures>
          {additionalPictures.map{pic => {
            pic.get("id").map{pid =>
              <picture image-id={pid}>
                {pic.get("caption").map{caption => <caption>{caption}</caption>} orNull}
              </picture>} orNull
            }}
          }
        </pictures>
      }
      {syndicateEncodings.map{se => <syndicate-encodings>{se}</syndicate-encodings>} orNull}
    </video>
  }
}


object R2ToFlexGalleryConversion{

  def jsonMap(json : String) : Map[String, Any] = {
    JacksMapper.readValue[Map[String, Any]](json)
  }

  def parseLiveData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexGalleryConversion(json, true)
    Logger.debug(s"Produced live gallery content XML:\n" + parsed.xml.toString())
    parsed
  }
  def parseDraftData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexGalleryConversion(json, false)
    Logger.debug(s"Produced draft gallery content XML:\n" + parsed.xml.toString())
    parsed
  }
}

object R2ToFlexCartoonConversion{

  def jsonMap(json : String) : Map[String, Any] = {
    JacksMapper.readValue[Map[String, Any]](json)
  }

  def parseLiveData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexCartoonConversion(json, true)
    Logger.debug(s"Produced live cartoon content XML:\n" + parsed.xml.toString())
    parsed
  }
  def parseDraftData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexCartoonConversion(json, false)
    Logger.debug(s"Produced draft cartoon content XML:\n" + parsed.xml.toString())
    parsed
  }
}


object R2ToFlexVideoConversion{

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
