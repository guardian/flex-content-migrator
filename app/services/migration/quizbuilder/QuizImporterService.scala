package services.migration.quizbuilder

import play.Logger
import play.api.Play
import play.api.libs.ws.WS
import services.AsyncCallerWithMultipartData

import scala.concurrent.Future


class QuizImporterService extends AsyncCallerWithMultipartData{

  lazy val QuizImportBaseUrl = Play.current.configuration.getString("quizbuilder.baseurl").get;


  lazy val ImportUrl = QuizImportBaseUrl + "/quizzes/import"


  def importQuiz(quiz : Quiz): Future[Option[String]] = {
    import play.api.Play.current
    import scala.concurrent.ExecutionContext.Implicits.global
    WS.url(ImportUrl).post(quiz.getJson).map{response =>
      val statusCode = (response.json \ "statusCode").as[Int]
      val statusText = (response.json \ "statusText").as[String]
      val id = (response.json \ "id").as[String]
      val wasSuccess = statusCode == 200 && statusText == "Success"
      if(wasSuccess) Some(id)
      else{
        Logger.debug(s"Failed to create content atom for R2 quiz ${quiz.r2QuizId}: ${statusCode} ${statusText}")
        None
      }
    }
  }

}
