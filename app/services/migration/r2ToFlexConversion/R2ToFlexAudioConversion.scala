package services.migration.r2ToFlexConversion

import com.lambdaworks.jacks.JacksMapper
import play.Logger
import play.api.libs.ws.{WSResponse, WS}

import scala.concurrent.Future
import scala.concurrent._
import scala.concurrent.duration._


object R2ToFlexAudioConversion {

  def jsonMap(json : String) : Map[String, Any] = {
    JacksMapper.readValue[Map[String, Any]](json)
  }

  def parseLiveData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexAudioConversion(json, true)
    Logger.debug(s"Produced live audio content XML:\n" + parsed.xml.toString())
    parsed
  }
  def parseDraftData(json : Map[String, Any]) = {
    val parsed = new R2ToFlexAudioConversion(json, false)
    Logger.debug(s"Produced draft audio content XML:\n" + parsed.xml.toString())
    parsed
  }
}

class R2ToFlexAudioConversion(jsonMap : Map[String, Any], parseLiveData : Boolean)
  extends R2ToFlexContentConversion(jsonMap, parseLiveData){

  import scala.language.postfixOps

  override lazy val live = getFacetFromMap("live")

  override lazy val draft = getFacetFromMap("draft")

  private def audioDuration : Option[(String, String)] = {
    for( mins <- getAs[Int]("durationMinutes"); secs <- getAs[Int]("durationSeconds"))
      yield (mins.toString, secs.toString)
  }


  private def blockVideoAds : Option[String] =
    getAsString("blockAds").map(_.toLowerCase match {
      case "true" =>  "yes"
      case _ =>       "no"
    })

  private def audioSource = getAsString("source")

  private def getFormatFromFile(path : String) =
    if(path.toLowerCase.endsWith(".mp3")) "audio/mpeg"
    else throw new IllegalArgumentException(s"Unrecognised extension ${path}")


  private def mapFilePath(path : String) = "http://static.guim.co.uk/" + path

  private def checkSizeInBytes(sizeInBytes : Any) : String = {
    val sizeStr = sizeInBytes.toString
    if(sizeStr.toInt<10000)
      throw new IllegalStateException(s"encoding file size is suspiciously small: ${sizeStr}")
    sizeStr
  }

  private def getSizeInBytesFromFile(file : String): String = {
    import scala.concurrent.ExecutionContext.Implicits.global
    import play.api.Play.current
    val response = WS.url(file).withFollowRedirects(true).head().map(resp => {
      Logger.debug(s"File size check: ${resp.status} ${resp.statusText} ")
      resp.header("Content-Length")
    }).map(_.get)

    val size = Await.result(response, 180 seconds)
    Logger.info(s"File size check result: file = ${file} size = ${size}")
    size
  }

  private def encodings : List[Map[String, String]] = {
    val encodings: Option[Map[String, Any]] = getAs[Map[String, Any]]("audioFile", liveOrDraft)

    def getEncodingValue(encoding : Map[String, Any]): Map[String, String] = {
      val path = encoding.get("path").map(s => mapFilePath(s.toString))
      val format = path.map(getFormatFromFile(_))
      val size =
        if(parseLiveData){
          path.map(getSizeInBytesFromFile _ ).map(checkSizeInBytes _ ) //checks the file exists and has a sensible size
        }
        else{
          encoding.get("length").map(_.toString) //for draft just trust the value from R2
        }

      val map =
        for(path <- path; format <- format; sizeFromPath <- size) yield
        {
          Map("url" -> path, "sizeInBytes" -> sizeFromPath, "format" -> format)
        }
      map.get
    }

    encodings.map(getEncodingValue(_)).toList
  }

  private def stillImageUrl = getAsString("stillImageUrl")


  private def embeddable = getAsString("embeddable").map(_.toBoolean)


  private def ukOnly = getAsString("ukOnly")

  private def syndicateEncodings = getAsString("syndicateEncodings").map(_.toBoolean)

  private def explicit = getAsString("explicit").map(_.toBoolean).map(_.toString)
  private def clean = getAsString("clean").map(_.toBoolean).map(_.toString)

  private def showNotes = getAsString("showNotes")

  private def productionOffice = getAsString("productionOffice")


  override lazy val xml = {
    <audio story-bundle={storyBundleId orNull} cms-path={cmsPath orNull} notes={notes orNull} slug-word={slug orNull}
           uk-only={ukOnly orNull} explicit={explicit orNull} clean={clean orNull} expiry-date={scheduledExpiry orNull}
           created-date={createdDate orNull} created-user={createdBy orNull} modified-date={modifiedDate orNull}
           web-publication-date={webPublicationDate orNull}
           production-office={productionOffice orNull}>

      <tags>{for(tag <- tags) yield <tag id={tag}/> }</tags>
      {r2PageId.map( pageId =>          <originalR2PageId>{pageId}</originalR2PageId>) orNull}
      {r2ContentId.map( contentId =>    <originalR2ContentId>{contentId}</originalR2ContentId>) orNull}
      {headline.map(h =>      <headline>{h}</headline>) orNull}
      {strap.map(s =>         <strap>{s}</strap>) orNull}
      {standfirst.map(s =>    <standfirst>{s}</standfirst>) orNull}
      {byline.map(b =>        <byline>{b}</byline>) orNull}
      {linktext.map(l =>      <linktext>{l}</linktext>) orNull}
      {trailtext.map(t =>     <trail>{t}</trail>) orNull}
      {audioDuration.map(d =>   <audio-duration minutes={d._1} seconds={d._2}/>) orNull}
      {blockVideoAds.map(b =>  <block-audio-ads>{b}</block-audio-ads>) orNull}
      {audioSource.map(as =>  <audio-source>{as}</audio-source>) orNull}
      {encodings.map{ enc => {
      <encoding>
        {enc.get("format").map(f =>      <format>{f}</format>) orNull}
        {enc.get("url").map(u =>     <audio-file-url size-in-bytes={enc.get("sizeInBytes").get}>{u}</audio-file-url>) orNull}
        {getAs[Int]("durationMinutes").map(m =>  <minutes>{m}</minutes>) orNull}
        {getAs[Int]("durationSeconds").map(s =>  <seconds>{s}</seconds>) orNull}
      </encoding>
    }}
      }
      {showNotes.map(notes => <show-notes>{notes}</show-notes>) orNull}
      {stillImageUrl.map(iu =>      <still-image-url>{iu}</still-image-url>) orNull}
      {thumbnailImageUrl.map(iu =>  <thumbnail-image-url>{iu}</thumbnail-image-url>) orNull}
      {embeddable.map(e =>          <embeddable>{e}</embeddable>) orNull}
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
    </audio>
  }
}