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

  private def audioDuration : Option[(String, String)] = {
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

  private def audioSource = getAsString("source")

  private def encodings : List[Map[String, String]] = {
    val encodings: List[Map[String, Any]] = getAsMaps("audioFile", liveOrDraft).getOrElse(Nil)
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
    <audio story-bundle={storyBundleId orNull} cms-path={cmsPath orNull} notes={notes orNull} slug-word={slug orNull}
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
      {audioDuration.map(d =>   <audio-duration minutes={d._1} seconds={d._2}/>) orNull}
      {blockVideoAds.map(b =>  <block-audio-ads>{b}</block-audio-ads>) orNull}
      {audioSource.map(as =>  <audio-source>{as}</audio-source>) orNull}
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
      {embeddable.map(e =>          <embeddable>{e}</embeddable>) orNull}
      {trailPictureId.map(tp =>     <trail-picture image-id={tp} />) orNull}
      {largeTrailPictureId.map(ltp =>     <large-trail-picture image-id={ltp} />) orNull}
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
      {syndicateEncodings.map{se => <syndicate-encodings>{se}</syndicate-encodings>} orNull}
    </audio>
  }
}