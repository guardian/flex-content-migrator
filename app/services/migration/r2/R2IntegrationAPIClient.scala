package services.migration.r2

import com.lambdaworks.jacks.JacksMapper
import model.{MigrationBatch, SourceContent}
import play.Logger
import play.api.Play
import play.api.Play.current
import play.api.libs.ws.{WS, WSResponse}
import services.aws.Metrics

import scala.concurrent.Future


protected[migration] class R2IntegrationAPIClient {

  private val R2BaseUrl = Play.current.configuration.getString("r2.baseurl").get;

  private def GalleriesToMigrateUrl =
    R2BaseUrl + "/tools/newspaperintegration/migration/galleries-to-migrate"

  private def CartoonsToMigrateUrl =
    R2BaseUrl + "/tools/newspaperintegration/migration/cartoons-to-migrate"

  private def QuizzesToMigrateUrl =
    R2BaseUrl + "/tools/newspaperintegration/migration/quizzes-to-migrate"

  private def AudiosToMigrateUrl =
    R2BaseUrl + "/tools/newspaperintegration/migration/audios-to-migrate"

  private def ArticlesToMigrateUrl =
    R2BaseUrl + "/tools/newspaperintegration/migration/articles-to-migrate"

  private def GetGalleryInJsonUrl(id : Int) =
    R2BaseUrl + s"/tools/newspaperintegration/migration/gallery/${id}"

  private def GetCartoonInJsonUrl(id : Int) =
    R2BaseUrl + s"/tools/newspaperintegration/migration/cartoon/${id}"

  private def GetQuizInJsonUrl(id : Int) =
    R2BaseUrl + s"/tools/newspaperintegration/migration/quiz/${id}"

  private def GetAudioInJsonUrl(id : Int) =
    R2BaseUrl + s"/tools/newspaperintegration/migration/audio/${id}"

  private def GetArticleInJsonUrl(id : Int) =
    R2BaseUrl + s"/tools/newspaperintegration/migration/article/${id}"

  private def ContentMigratedUrl =
    R2BaseUrl + "/tools/newspaperintegration/migration/migratecontent"

  import play.api.libs.concurrent.Execution.Implicits._


  private def getGalleryInJson(id : Int) =
    WS.url(GetGalleryInJsonUrl(id)).get()

  private def getCartoonInJson(id : Int) =
    WS.url(GetCartoonInJsonUrl(id)).get()

  private def getQuizInJson(id : Int) =
    WS.url(GetQuizInJsonUrl(id)).get()

  private def getAudioInJson(id : Int) =
    WS.url(GetAudioInJsonUrl(id)).get()

  private def getArticleInJson(id : Int) =
    WS.url(GetArticleInJsonUrl(id)).get()


  private def migrateContentInR2(r2ContentId : Int, composerId : String) = {
    WS.url(requestContentMigrated(r2ContentId, composerId)).get().map { response => {
      Logger.debug(s"migrateContentInR2 response : ${response.status} : ${response.body}")
      val success = response.status == 200 && (response.json \ "success").as[Boolean]
      val message =
        if(response.status!=200)
          R2ErrorHtmlProcessor.getInterestingContentFromHtml(response.body)
        else
          (response.json \ "message").as[String]

      if(!success){
        //log the full failure message here
        Logger.warn(message)
      }
      (success, message)
    }}
  }

  protected[migration] def migrateQuizInR2(r2QuizId : Int, composerId : String) = {
    migrateContentInR2(r2QuizId, composerId).map{ result => {
      if(result._1){
        import Metrics._
        QuizzesMigratedInR2.increment
      }
      result
    }
    }
  }

  protected[migration] def migrateGalleryInR2(r2GalleryId : Int, composerId : String) = {
    migrateContentInR2(r2GalleryId, composerId).map{ result => {
    if(result._1){
      import Metrics._
      GalleriesMigratedInR2.increment
    }
    result
  }
  }
}


  protected[migration] def migrateCartoonInR2(r2CartoonId : Int, composerId : String) = {
    migrateContentInR2(r2CartoonId, composerId).map{ result => {
      if(result._1){
        import Metrics._
        CartoonsMigratedInR2.increment
      }
      result
    }
    }
  }

  protected[migration] def migrateAudioInR2(r2AudioId : Int, composerId : String) = {
    migrateContentInR2(r2AudioId, composerId).map{ result => {
      if(result._1){
        import Metrics._
        AudiosMigratedInR2.increment
      }
      result
    }
    }
  }

  protected[migration] def migrateArticleInR2(r2ArticleId : Int, composerId : String) = {
    migrateContentInR2(r2ArticleId, composerId).map{ result => {
      if(result._1){
        import Metrics._
        ArticlesMigratedInR2.increment
      }
      result
    }
    }
  }
  


  protected[migration] def getBatchOfGalleryIds(batchSize : Int, batchNumber : Int, tagIds : Option[String]=None, idHigherThan : Option[Int] = None) : Future[List[Int]] = {
    if(tagIds.isDefined) throw new UnsupportedOperationException("Specific tagId migration not supported for galleries")
    if(idHigherThan.isDefined) throw new UnsupportedOperationException("idHigherThan is not supported for galleries")
    WS.url(requestGalleriesToMigrate(batchSize, batchNumber)).get().map{response =>
      (response.json \ "elementsOnCurrentPage").as[List[Int]]
    }
  }

  protected[migration] def getBatchOfCartoonIds(batchSize : Int, batchNumber : Int, tagIds : Option[String]=None, idHigherThan : Option[Int] = None ) : Future[List[Int]] = {
    if(tagIds.isDefined) throw new UnsupportedOperationException("Specific tagId migration not supported for cartoons")
    if(idHigherThan.isDefined) throw new UnsupportedOperationException("idHigherThan is not supported for cartoons")
    WS.url(requestCartoonsToMigrate(batchSize, batchNumber)).get().map{response =>
      (response.json \ "elementsOnCurrentPage").as[List[Int]]
    }
  }

  protected[migration] def getBatchOfQuizIds(batchSize : Int, batchNumber : Int, tagIds : Option[String]=None, idHigherThan : Option[Int] = None) : Future[List[Int]] = {
    if(tagIds.isDefined) throw new UnsupportedOperationException("Specific tagId migration not supported for quizzes")
    if(idHigherThan.isDefined) throw new UnsupportedOperationException("idHigherThan is not supported for quizzes")
    WS.url(requestQuizzesToMigrate(batchSize, batchNumber)).get().map{response =>
      (response.json \ "elementsOnCurrentPage").as[List[Int]]
    }
  }

  protected[migration] def getBatchOfAudioIds(batchSize : Int, batchNumber : Int, tagIds : Option[String]=None, idHigherThan : Option[Int] = None) : Future[List[Int]] = {
    if(tagIds.isDefined) throw new UnsupportedOperationException("Specific tagId migration not supported for audios")
    if(idHigherThan.isDefined) throw new UnsupportedOperationException("idHigherThan is not supported for audios")
    WS.url(requestAudiosToMigrate(batchSize, batchNumber)).get().map{response =>
      (response.json \ "elementsOnCurrentPage").as[List[Int]]
    }
  }


  protected[migration] def getBatchOfArticleIds(batchSize : Int, batchNumber : Int, tagIds : Option[String], withIdsHigherThan : Option[Int]) : Future[List[Int]] = {
    Logger.debug(s"Loading articles : batchSize=${batchSize} batchNumber=${batchNumber} tagIds=${tagIds} withIdsHigherThan]${withIdsHigherThan}")
    WS.url(requestArticlesToMigrate(batchSize, batchNumber, tagIds, withIdsHigherThan)).get().map{response =>
      (response.json \ "elementsOnCurrentPage").as[List[Int]]
    }
  }
  
  private def isResponseAuthoritative(response : WSResponse) : Boolean = {
    val json = response.body
    val map = JacksMapper.readValue[Map[String, Any]](json)
    map.get("detailMessage") match {
      case Some(s : String)
          if( s.startsWith("no video with ID") ||
              s.startsWith("invalid id")) => false  //R2 does not recognise this content
      case _ => true
    }
  }


  protected[migration] def loadGalleryById(id : Int) : Future[SourceContent] = {
    getGalleryInJson(id).map(response => {
      Logger.debug(s"Loaded gallery ${id} from R2")
      new SourceContent(id, response.body)
    })
  }

  protected[migration] def loadCartoonById(id : Int) : Future[SourceContent] = {
    getCartoonInJson(id).map(response => {
      Logger.debug(s"Loaded cartoon ${id} from R2")
      new SourceContent(id, response.body)
    })
  }

  protected[migration] def loadQuizById(id : Int) : Future[SourceContent] = {
    getQuizInJson(id).map(response => {
      Logger.debug(s"Loaded quiz ${id} from R2")
      new SourceContent(id, response.body)
    })
  }

  protected[migration] def loadAudioById(id : Int) : Future[SourceContent] = {
    getAudioInJson(id).map(response => {
      Logger.debug(s"Loaded audio ${id} from R2")
      new SourceContent(id, response.body)
    })
  }

  protected[migration] def loadArticleById(id : Int) : Future[SourceContent] = {
    getArticleInJson(id).map(response => {
      Logger.debug(s"Loaded article ${id} from R2")
      new SourceContent(id, response.body)
    })
  }

  private def pageSize(size : Int) = s"pageSize=${size}"

  private def pageNumber(offset : Int) = s"pageNumber=${offset}"

  private def idHigherThan(idHigherThan : Option[Int]) = idHigherThan.map("&idHigherThan=" + _).getOrElse("")

  private def tags(tagIds : Option[String]) = tagIds.map("&tagIds=" + _).getOrElse("")

  private def r2ContentId(id : Int) = s"r2ContentId=${id}"

  private def composerId(id : String) = s"composerId=${id}"


  private def requestGalleriesToMigrate(size : Int, offset : Int) =
    s"${GalleriesToMigrateUrl}?${pageSize(size)}&${pageNumber(offset)}"

  private def requestCartoonsToMigrate(size : Int, offset : Int) =
    s"${CartoonsToMigrateUrl}?${pageSize(size)}&${pageNumber(offset)}"

  private def requestQuizzesToMigrate(size : Int, offset : Int) =
    s"${QuizzesToMigrateUrl}?${pageSize(size)}&${pageNumber(offset)}"

  private def requestAudiosToMigrate(size : Int, offset : Int) =
    s"${AudiosToMigrateUrl}?${pageSize(size)}&${pageNumber(offset)}"

  private def requestArticlesToMigrate(size : Int, offset : Int, tagIds : Option[String], withIdsHigherThan : Option[Int]) =
    s"${ArticlesToMigrateUrl}?${pageSize(size)}&${pageNumber(offset)}${tags(tagIds)}${idHigherThan(withIdsHigherThan)}"

  private def requestContentMigrated(r2ContentIdInt : Int, composerIdSt : String) =
    s"${ContentMigratedUrl}?${r2ContentId(r2ContentIdInt)}&${composerId(composerIdSt)}"

}


trait R2MigrationService{

  def loadContentById(id : Integer) : Future[SourceContent]

  def loadBatchOfContent(batchSize : Int, batchNumber : Int = 1, tagIds : Option[String], withIdsHigherThan : Option[Int]) : Future[MigrationBatch]
  def getBatchOfContentIds(batchSize : Int, batchOffset : Int, tagIds : Option[String], withIdsHigherThan : Option[Int]) : Future[List[Int]]

  def migrateContentInR2(contentId : Int, composerId : String) : Future[(Boolean, String)]

}


object R2ErrorHtmlProcessor{

  def getInterestingContentFromHtml(html : String) : String = {
    "<div id=\"errorDisplay\">[\\s\\S]*</div>".r.findFirstIn(html) match {
      case Some(s) => s.replaceAll("<div id=\"errorDisplay\">", "").
                        replaceAll("</div>", "").
                        replaceAll("<pre>", "").
                        replaceAll("</pre>", "").trim()

      case None => html
    }
  }

}
