package services.migration.quizbuilder

import play.api.Play
import play.api.libs.ws.WS
import services.AsyncCallerWithMultipartData

import scala.concurrent.Future


class QuizImporterService extends AsyncCallerWithMultipartData{

  lazy val QuizImportBaseUrl = Play.current.configuration.getString("quizbuilder.baseurl").get;


  lazy val ImportUrl = QuizImportBaseUrl + "/quizzes/import"


  def importQuiz(quiz : Quiz): Future[Object] = {
    import play.api.Play.current
    import scala.concurrent.ExecutionContext.Implicits.global
    WS.url(ImportUrl).post(quiz.getJson).map{response =>
      response.body //TODO
    }
  }

}
