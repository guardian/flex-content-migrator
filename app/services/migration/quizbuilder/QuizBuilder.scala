package services.migration.quizbuilder

import org.joda.time.DateTime
import play.api.Play
import play.api.libs.json._

trait JsonModel {
  def getJson : JsObject
}

case class QuizImage(src : String, alt : String) extends JsonModel{
  override def getJson: JsObject = {
    Json.obj(
      "src" -> src,
      "alt" -> alt
    )
  }
}
case class QuizQuestion(text : String, answers : List[QuizQuestionAnswer], image : Option[QuizImage] = None) extends JsonModel{
  override def getJson: JsObject = {
    Json.obj(
      "questionText" -> text,
      "assets" -> JsArray(), //TODO
      "buckets" -> JsArray(), //TODO
      "answers" -> answers.map(_.getJson)
    )
  }
}
case class QuizQuestionAnswer(text : String, isCorrect : Boolean, image : Option[QuizImage] = None, revealText : Option[String] = None) extends JsonModel{
  override def getJson: JsObject = {
    Json.obj(
      "answerText" -> text,
      "weight" -> (if(isCorrect) 1 else 0),
      "revealText" -> revealText.map(_.toString),
      "assets" -> JsArray() //TODO
    )
  }
}
case class QuizResultGroup(title : String, minScore : Int, share : Option[String] = None) extends JsonModel{
  val shareString = share.getOrElse("some share") //TODO
  override def getJson: JsObject = {
    Json.obj(
      "title" -> title,
      "minScore" -> minScore,
      "share" -> shareString
    )
  }
}

case class Quiz(r2QuizId : Int, title : String, createdAt : DateTime, createdBy : String, updatedAt : DateTime, updatedBy: String,
                questions : List[QuizQuestion], resultGroups : List[QuizResultGroup],  revealAtEnd : Boolean = true) extends JsonModel{

  lazy val QuizSecret = Play.current.configuration.getString("quizbuilder.secret").get;




  private def quizContentJson: JsObject = {
    import play.api.libs.json._
    Json.obj(
      "questions" -> questions.map(_.getJson),
      "resultGroups" -> Json.obj("groups" -> resultGroups.map(_.getJson))
    )
  }

  private def quizJson = {
    import play.api.libs.json._
    Json.obj(
      "title" -> title,
      "updatedAt" -> updatedAt.getMillis.toString,
      "updatedBy" -> updatedBy,
      "createdAt" -> createdAt.getMillis.toString,
      "createdBy" -> createdBy,
      "published" -> true,
      "publishedAt" -> createdAt.getMillis.toString, //TODO
      "revision" -> 1,
      "quizType" -> "knowledge",  //TODO
      "revealAtEnd" -> revealAtEnd,
      "defaultColumns" -> 1, //TODO
      "content" -> quizContentJson
    )
  }

  override def getJson = {
    import play.api.libs.json._
    Json.obj(
      "secret" -> QuizSecret,
      "quiz" -> quizJson
    )
  }

}
