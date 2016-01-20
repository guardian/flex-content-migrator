package services.migration.r2ToFlexConversion

import java.text.SimpleDateFormat

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


  def getInBodyElements = {
    getAsMap("contentBody", liveOrDraft).flatMap( getAsMaps("inBodyElements", _)).toList.flatten
  }

  protected val dateFormatterXml = new SimpleDateFormat("yyyyMMdd");
  protected val dateTimeFormatterXml = new SimpleDateFormat("yyyyMMddHHmm");

  override lazy val live = getFacetFromMap("live")

  override lazy val draft = getFacetFromMap("draft")


  private def stillImageUrl = getAsString("stillImageUrl")


  private def embeddable = getAsString("embeddable").map(_.toBoolean)


  private def ukOnly = getAsString("ukOnly")

  private def syndicateEncodings = getAsString("syndicateEncodings").map(_.toBoolean)

  private def explicit = getAsString("explicit").map(_.toBoolean).map(_.toString)

  private def body = getAsMap("contentBody", liveOrDraft).flatMap(getAsString("bodyText", _))

  private def enableComments = getAsString("pluckCommentable")

  private def commentCloseDate = getAsString("closingDateForCommenting")

  private def premoderation = getAsString("pluckPremoderated")

  private def productionOffice = getAsString("productionOffice")

  private def issueDate = getAsString("publicationDate")


  private def starRating : Option[String] = {
    val stars = getAsString("starRating")
    stars.map(_.toUpperCase.trim) match {
      case None=> None
      case Some("FIVE_STARS")   => Some("5")
      case Some("FOUR_STARS")   => Some("4")
      case Some("THREE_STARS")  => Some("3")
      case Some("TWO_STARS")    => Some("2")
      case Some("ONE_STAR")     => Some("1")
      case Some("ZERO_STAR")    => Some("0")
      case _ => throw new IllegalStateException(s"Cannot map the star rating: ${stars}")
    }
  }

  private def getBookSectionToken : Option[(String, String)] = {
    val tokens = getAsMaps("tags", liveOrDraft).getOrElse(Nil).flatMap(_.get("newspaperMetaMappedName")).map(_.toString).toSet
    if(tokens.size>1) None
    else{
      val splitToken = tokens.headOption.map(_.split("\\.").toList)
      splitToken match {
        case None => None
        case Some(book :: section :: Nil) => Some((book, section))
        case Some(other) => throw new IllegalStateException(s"Unexpected tag token type: ${other}")
      }
    }
  }

  private def largePicture : Option[Map[String, String]] = {
    getAsMap("largePicture", liveOrDraft).map( pic => {
      def getFromRootOrPictureOrImage(field : String) =
        getAsString(field) match {
          case Some(x) => Some(x) //root
          case None =>
            getAsString (field, pic) match {
              case Some (x) => Some (x)   //picture
              case None => getAsMap ("image", pic).flatMap (_.get (field) ).map (_.toString)  //image
            }
        }

        val id  = getAsMap("image", pic).flatMap(_.get("id")).map(_.toString) //image id
        val mediaId   = getAsString("id", pic).map("gu-image-" + _) //picture ID is the media Id)
        ( id.map("id" -> _) ++ mediaId.map("mediaId" -> _) ++
          getFromRootOrPictureOrImage("caption").map(caption => ("caption" -> caption)) ++
          getFromRootOrPictureOrImage("altText").map(altText => ("altText" -> altText)) ++
          getFromRootOrPictureOrImage("credit").map(comments => ("credit" -> comments)) ++
          getFromRootOrPictureOrImage("creditPrefix").map(comments => ("creditPrefix" -> comments))
        ).toMap[String,String]
    })
  }
  private def mainPicture : Option[Map[String, String]] = {
    getAsMap("picture", liveOrDraft).map( pic => {
      def getFromRootOrPictureOrImage(field : String) =
        getAsString(field) match {
          case Some(x) => Some(x) //root
          case None =>
            getAsString (field, pic) match {
              case Some (x) => Some (x)   //picture
              case None => getAsMap ("image", pic).flatMap (_.get (field) ).map (_.toString)  //image
            }
        }

      val id  = getAsMap("image", pic).flatMap(_.get("id")).map(_.toString) //image id
      val mediaId   = getAsString("id", pic).map("gu-image-" + _) //picture ID is the media Id)

        (   id.map("id" -> _) ++ mediaId.map("mediaId" -> _) ++
            getFromRootOrPictureOrImage("caption").map(caption => ("caption" -> caption)) ++
            getFromRootOrPictureOrImage("altText").map(altText => ("altText" -> altText)) ++
            getFromRootOrPictureOrImage("credit").map(credit => ("credit" -> credit)) ++
            getFromRootOrPictureOrImage("creditPrefix").map(prefix => ("creditPrefix" -> prefix))
        ).toMap[String,String]
    })
  }

  private def bookCode = getBookSectionToken.map(_._1)

  private def sectionCode = getBookSectionToken.map(_._2)

  private def embeds: List[Map[String, Any]] = getAsMaps("inBodyElements", getAsMap("contentBody", liveOrDraft).get).getOrElse(Nil)

  private def getEmbedOffset(embedMap : Map[String, Any]) = embedMap("inBodyDelegate").asInstanceOf[Map[String, Any]]("characterOffset").toString

  private def getEmbedPicture(embedMap : Map[String, Any]) : Map[String, String] = {
      def getFromRootOrPictureOrImage(field : String) =
        getAsString(field) match {
          case Some(x) => Some(x) //root
          case None =>
            getAsString (field, embedMap) match {
              case Some (x) => Some (x)   //picture
              case None => getAsMap ("image", embedMap).flatMap (_.get (field) ).map (_.toString)  //image
            }
        }
      val id  = getAsMap("image", embedMap).flatMap(_.get("id")).map(_.toString) //image id
      val mediaId   = getAsString("id", embedMap).map("gu-image-" + _) //picture ID is the media Id)

      (
        id.map("id" -> _) ++ mediaId.map("mediaId" -> _) ++
        getFromRootOrPictureOrImage("caption").map(caption => ("caption" -> caption)) ++
        getFromRootOrPictureOrImage("altText").map(altText => ("altText" -> altText)) ++
        getFromRootOrPictureOrImage("credit").map(credit => ("credit" -> credit)) ++
        getFromRootOrPictureOrImage("creditPrefix").map(prefix => ("creditPrefix" -> prefix))
      ).toMap[String,String]
  }

  private def pictureEmbeds : List[Map[String,String]] = {
    embeds.map{embed =>
      Map("offset" -> getEmbedOffset(embed)) ++
        getEmbedPicture(getAsMap("inBodyPicture", embed).getOrElse(Map[String, Any]()))
    }
  }

  override lazy val xml =
    <article story-bundle={storyBundleId orNull} cms-path={cmsPath orNull} notes={notes orNull} slug-word={slug orNull}
           uk-only={ukOnly orNull} explicit={explicit orNull} expiry-date={scheduledExpiry orNull}
           created-date={createdDate orNull} created-user={createdBy orNull} modified-date={modifiedDate orNull}
           web-publication-date={webPublicationDate orNull}
           on-page={pageNumber orNull} enable-comments={enableComments orNull} premoderation={premoderation orNull}
           comment-expiry-date={commentCloseDate orNull} production-office={productionOffice orNull}
           issue-date={issueDate orNull}
           book-code={bookCode orNull} section-code={sectionCode orNull}
           star-rating={starRating orNull}>

      <tags>{for(tag <- tags) yield <tag id={tag}/> }</tags>
      {r2PageId.map( pageId =>          <originalR2PageId>{pageId}</originalR2PageId>) orNull}
      {r2ContentId.map( contentId =>    <originalR2ContentId>{contentId}</originalR2ContentId>) orNull}
      {headline.map(h =>      <headline>{h}</headline>) orNull}
      {strap.map(s =>         <strap>{s}</strap>) orNull}
      {standfirst.map(s =>    <standfirst>{s}</standfirst>) orNull}
      {byline.map(b =>        <byline>{b}</byline>) orNull}
      {linktext.map(l =>      <linktext>{l}</linktext>) orNull}
      {trailtext.map(t =>     <trail>{t}</trail>) orNull}
      {stillImageUrl.map(iu =>      <still-image-url>{iu}</still-image-url>) orNull}
      {thumbnailImageUrl.map(iu =>  <thumbnail-image-url>{iu}</thumbnail-image-url>) orNull}
      {embeddable.map(e =>          <embeddable>{e}</embeddable>) orNull}
      {trailPictureId.map(tp =>     <trail-picture image-id={tp} media-id={trailPictureMediaId orNull} />) orNull}
      {largeTrailPictureId.map(ltp =>     <large-trail-picture image-id={ltp} media-id={largeTrailPictureMediaId orNull} />) orNull}
      {body.map{b => <body>{b}</body>} orNull}
      {mainPicture.map{pic =>
        <main-picture media-id={pic.get("mediaId") orNull} image-id={pic.get("id") orNull}>
          {pic.get("caption").map{v => <caption>{v}</caption>} orNull}
          {pic.get("altText").map{v => <altText>{v}</altText>} orNull}
          {pic.get("credit").map{v => <credit>{v}</credit>} orNull}
          {pic.get("creditPrefix").map{v => <creditPrefix>{v}</creditPrefix>} orNull}
        </main-picture>} orNull
      }
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
      }{if (!pictureEmbeds.isEmpty)
      <embeds>
        {pictureEmbeds.map(picEmbed =>
        <embed offset={picEmbed.get("offset") orNull}>
          <picture media-id={picEmbed.get("mediaId") orNull} image-id={picEmbed.get("id") orNull}>
            {picEmbed.get("caption").map { v => <caption>{v}</caption>} orNull}
            {picEmbed.get("altText").map { v => <altText>{v}</altText>} orNull}
            {picEmbed.get("credit").map { v => <credit>{v}</credit>} orNull}
            {picEmbed.get("creditPrefix").map { v => <creditPrefix>{v}</creditPrefix>} orNull}
          </picture>
        </embed>
      )}
      </embeds>}
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
    </article>

}