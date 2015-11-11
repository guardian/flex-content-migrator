package services.migration.r2ToFlexConversion


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

  protected def trailPictureMediaId =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("defaultTrailPictureMediaId", p.head))

  protected def largeTrailPictureId =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("largeTrailPictureImgId", p.head))

  protected def largeTrailPictureMediaId =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("largeTrailPictureMediaId", p.head))

  protected def createdBy =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("createdBy", p.head))




  protected def scheduledExpiry =
    getAsString("scheduledExpiryDate")

  protected def createdDate =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("createdOn", p.head))

  protected def modifiedDate =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("modifiedOn", p.head))

  protected def webPublicationDate =
    getAsMaps("pages", liveOrDraft).flatMap(p => getAsString("webPublicationTime", p.head))

  lazy val xmlCmsPath = cmsPath


  protected def pageNumber = getAsString("pageNumber")


  protected def associatedPictures : List[Map[String,String]] = {
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

  private def mapRights(rightValue : Option[String]) = {
    //historical videos can have null values in the DB - CAPI api-indexer will default to 'true', migrated content should
    //keep the same behaviour
    rightValue match {
      case None => Some("true")
      case Some(x) => Some(x)
    }
  }

  protected def syndicationAggregateFn = mapRights(getAsString("syndicationAggregate"))
  protected def subscriptionDatabasesFn = mapRights(getAsString("subscriptionDatabases"))
  protected def developerCommunityFn = mapRights(getAsString("developerCommunity"))

  type ExpiryInfo = (Option[Boolean], Option[String], Option[String])
  protected def getRightsExpiry : Option[ExpiryInfo] = {
    val isExpired = getAsString("expired").map(_.toBoolean)
    val scheduledExpiry = getAsString("scheduledExpiryDate")

    isExpired match {
      case Some(true) => Some((Some(true), scheduledExpiry.map(_.toString), None))
      case _ => {
        //not expired but it might be scheduled to expire
        scheduledExpiry match {
          case Some(schedule) =>{
            Some((Some(false), None, Some(schedule.toString)))
          }
          case _ => None //not expired and not scheduled to expire
        }
      }
    }
  }

  protected def getCommercialExpiry : Option[ExpiryInfo] = {
    val isExpired = getAsString("expiredCommercial").map(_.toBoolean)
    val expiredAt = getAsString("commercialExpiryDate")
    //commercial expiry just happens, it is not scheduled, so it is either expired (with a date) or nothing
    isExpired match {
      case Some(true) => Some((Some(true), expiredAt, None))
      case _ => None
    }
  }

}














