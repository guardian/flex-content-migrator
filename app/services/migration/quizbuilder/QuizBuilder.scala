package services.migration.quizbuilder

import org.joda.time.DateTime
import play.api.Play
import play.api.libs.json.JsObject
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
      "answers" -> answers.map(_.getJson)
    )
  }
}
case class QuizQuestionAnswer(text : String, isCorrect : Boolean, image : Option[QuizImage] = None, revealText : Option[String] = None) extends JsonModel{
  override def getJson: JsObject = {
    Json.obj(
      "answerText" -> text,
      "correct" -> isCorrect,
      "image" -> image.map(_.getJson),
      "revealText" -> revealText.map(_.toString)
    )
  }
}
case class QuizResultGroup(title : String, minScore : Int, share : Option[String] = None) extends JsonModel{
  override def getJson: JsObject = {
    Json.obj(
      "title" -> title,
      "minScore" -> minScore,
      "share" -> share.map(_.toString)
    )
  }
}

case class Quiz(title : String, createdAt : DateTime, createdBy : String, updatedAt : DateTime, updatedBy: String, questions : List[QuizQuestion], resultGroups : List[QuizResultGroup]) extends JsonModel{

  lazy val QuizSecret = Play.current.configuration.getString("quizbuilder.secret").get;


  private def quizContentJson: JsObject = {
    import play.api.libs.json._
    Json.obj(
      "questions" -> questions.map(_.getJson),
      "resultGroups" -> resultGroups.map(_.getJson)
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
      "quizType" -> "knowledge",  //TODO
      "revealAtEnd" -> true, //TODO
      "defaultColumns" -> 1, //TODO
      //"published"
      //"revealAtEnd"
      //"quizType"
      //"defaultColumns"
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