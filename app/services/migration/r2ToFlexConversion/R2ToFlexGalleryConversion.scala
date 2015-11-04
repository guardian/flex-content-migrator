package services.migration.r2ToFlexConversion

import com.lambdaworks.jacks.JacksMapper
import play.Logger


object R2ToFlexGalleryConversion {

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

class R2ToFlexGalleryConversion(jsonMap : Map[String, Any], parseLiveData : Boolean)
  extends R2ToFlexContentConversion(jsonMap, parseLiveData){

     import scala.language.postfixOps

     protected def explicit = getAsString("explicit").map(_.toBoolean).map(_.toString)
     protected override def storyBundleId = {
       getAsString("displayStoryPackage", live)
     }

     override lazy val live = getFacetFromMap("live")

     override lazy val draft = getFacetFromMap("draft")

     val platformPictures: List[Map[String, Any]] = getAsMaps("pictures", liveOrDraft).getOrElse(Nil)

     override protected def associatedPictures : List[Map[String,String]] = {
       platformPictures.flatMap{pic => {
         val id        = getAsMap("image", pic).flatMap(_.get("id")).map(_.toString) //image id
         val mediaId   = getAsString("id", pic).map("gu-image-" + _) //picture ID is the media Id
         val thumbId   = getAsMap("thumbnailImage", pic).flatMap(_.get("id")).map(_.toString) //thumbnail image id

         val mainImageMap =
           id.map(id => {
               def getFromRootOrPictureOrImage(field : String) =
                 getAsString(field) match {
                   case Some(x) => Some(x) //root
                   case None =>
                     getAsString (field, pic) match {
                       case Some (x) => Some (x)   //picture
                       case None => getAsMap ("image", pic).flatMap (_.get (field) ).map (_.toString)  //image
                     }
                 }

               Map("id" -> id, "mediaId" -> mediaId.get)  ++
               {   getFromRootOrPictureOrImage("caption").map(caption => ("caption" -> caption)) ++
                   getFromRootOrPictureOrImage("altText").map(altText => ("altText" -> altText)) ++
                   getFromRootOrPictureOrImage("credit").map(comments => ("credit" -> comments)) ++
                   getFromRootOrPictureOrImage("creditPrefix").map(comments => ("creditPrefix" -> comments))
               }.toMap[String,String]
           }).toList

         val thumbImageMap =
           thumbId.map(id => {
             Map("id" -> id, "mediaId" -> mediaId.get)
           }).toList

         mainImageMap ++ thumbImageMap
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
         {trailPictureId.map(tp =>     <trail-picture image-id={tp} media-id={trailPictureMediaId orNull} />) orNull}
         {largeTrailPictureId.map(ltp =>     <large-trail-picture image-id={ltp} media-id={largeTrailPictureMediaId orNull} />) orNull}
         {if(!associatedPictures.isEmpty)
         <pictures>
           {associatedPictures.map{pic => {
           pic.get("id").map{pid =>
             <picture image-id={pid} media-id={pic("mediaId")}>
               {pic.get("caption").map{v => <caption>{v}</caption>} orNull}
               {pic.get("altText").map{v => <altText>{v}</altText>} orNull}
               {pic.get("credit").map{v => <credit>{v}</credit>} orNull}
               {pic.get("creditPrefix").map{v => <creditPrefix>{v}</creditPrefix>} orNull}
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
       </gallery>
     }
   }