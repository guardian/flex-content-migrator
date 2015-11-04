package services.migration.r2ToFlexConversion

import com.lambdaworks.jacks.JacksMapper
import play.Logger


object R2ToFlexCartoonConversion {

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

class R2ToFlexCartoonConversion(jsonMap : Map[String, Any], parseLiveData : Boolean)
  extends R2ToFlexGalleryConversion(jsonMap, parseLiveData){

     import scala.language.postfixOps

     val mainPicture = getAsMap("mainPicture", liveOrDraft)
     val largePicture = getAsMap("largePicture", liveOrDraft) match {
       case Some(largePictureMap) =>{
         val mainPictureId = mainPicture.flatMap(_.get("id"))
         mainPictureId match{
           case Some(mainPictureIdVal) => Some(largePictureMap + ("id" -> mainPictureIdVal)) //large picture should share same id as main picture
           case None => throw new IllegalStateException("main picture ID is missing")
         }
       }
       case None => None
     }

     override val platformPictures: List[Map[String, Any]] = mainPicture.toList ++ largePicture.toList

     override lazy val xml = {
       <picture story-bundle={storyBundleId orNull} cms-path={cmsPath orNull} notes={notes orNull} slug-word={slug orNull}
                explicit={explicit orNull} expiry-date={scheduledExpiry orNull}
                created-date={createdDate orNull} created-user={createdBy orNull} modified-date={modifiedDate orNull}
                web-publication-date={webPublicationDate orNull} on-page={pageNumber orNull}>

         <tags>
           {for (tag <- tags) yield <tag id={tag}/>}
         </tags>
         {r2PageId.map(pageId => <originalR2PageId>{pageId}</originalR2PageId>) orNull}
         {r2ContentId.map(contentId => <originalR2ContentId>{contentId}</originalR2ContentId>) orNull}
         {headline.map(h => <headline>{h}</headline>) orNull}
         {strap.map(s => <strap>{s}</strap>) orNull}
         {standfirst.map(s => <standfirst>{s}</standfirst>) orNull}
         {byline.map(b => <byline>{b}</byline>) orNull}
         {linktext.map(l => <linktext>{l}</linktext>) orNull}
         {trailtext.map(t => <trail>{t}</trail>) orNull}
         {thumbnailImageUrl.map(iu => <thumbnail-image-url>{iu}</thumbnail-image-url>) orNull}
         {trailPictureId.map(tp => <trail-picture image-id={tp} media-id={trailPictureMediaId orNull}/>) orNull}
         {largeTrailPictureId.map(ltp => <large-trail-picture image-id={ltp} media-id={largeTrailPictureMediaId orNull}/>) orNull}
         {if (!associatedPictures.isEmpty)
           <pictures>
             {associatedPictures.map { pic => {
             pic.get("id").map { pid =>
               <picture image-id={pid} media-id={pic("mediaId")}>
                 {pic.get("caption").map{v => <caption>{v}</caption>} orNull}
                 {pic.get("altText").map{v => <altText>{v}</altText>} orNull}
                 {pic.get("credit").map{v => <credit>{v}</credit>} orNull}
                 <displayCredit>true</displayCredit>
                 <creditPrefix>Illustration:</creditPrefix>
               </picture>
             }orNull
           }
           }}
           </pictures>}
           <rights syndicationAggregate={syndicationAggregateFn orNull} subscriptionDatabases={subscriptionDatabasesFn orNull} developerCommunity={developerCommunityFn orNull}/>
           //expiry of rights and commercial expiry processing
           {val rightsExpiry = getRightsExpiry
           val commercialExpiry = getCommercialExpiry
           if (rightsExpiry.isDefined || commercialExpiry.isDefined) {
             <expiry>
               {rightsExpiry.map(info => <rights expired={info._1.getOrElse(false).toString}
                                                 expiredAt={info._2 orNull}
                                                 scheduledExpiry={info._3 orNull}/>) orNull}{commercialExpiry.map(info => <commercial expired={info._1.getOrElse(false).toString}
                                                                                                                                      expiredAt={info._2 orNull}
                                                                                                                                      scheduledExpiry={info._3 orNull}/>) orNull}
             </expiry>
           }}
         </picture>
     }
   }