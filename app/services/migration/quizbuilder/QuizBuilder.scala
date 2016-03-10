package services.migration.quizbuilder

import org.joda.time.DateTime
import play.api.Play
import play.api.libs.json._

trait JsonModel {
  def getJson : JsObject
}

case class QuizImage(url : String, mimeType : String, alt : String, height: Option[Int] = None, width : Option[Int] = None, secureUrl : Option[String] = None ) extends JsonModel{
  override def getJson: JsObject = {

    val httpsUrl = secureUrl.getOrElse(url.replace("http://", "https://"))

    Json.obj(
      "type" -> "image",
      "data" -> Json.obj(
        "elementType" -> "image",
        "fields" -> Json.obj("altText" -> alt),
        "assets" -> Json.arr(
          Json.obj(
            "assetType" -> "image",
            "mimeType" -> mimeType,
            "url" -> url,
            "secureUrl" -> httpsUrl,
            "fields" -> Json.obj(
              "height" -> height,
              "width" -> width,
              "isMaster" -> true
            )
          )
        )
      )
    )
  }
}
case class QuizQuestion(text : String, answers : List[QuizQuestionAnswer], image : Option[QuizImage] = None) extends JsonModel{
  override def getJson: JsObject = {
    Json.obj(
      "questionText" -> text,
      "assets" -> image.toList.map(_.getJson),
      "buckets" -> JsArray(),
      "answers" -> answers.map(_.getJson)
    )
  }
}
case class QuizQuestionAnswer(text : Option[String] = None, isCorrect : Boolean, image : Option[QuizImage] = None, revealText : Option[String] = None, bucket: Option[Int] = None) extends JsonModel{
  override def getJson: JsObject = {
    Json.obj(
      "answerText" -> text.map(_.toString),
      "correct" -> isCorrect,
      "revealText" -> revealText.map(_.toString),
      "assets" -> image.toList.map(_.getJson),
      "buckets" -> bucket.map(bucket => JsArray(Seq(JsNumber(bucket))))
    )
  }
}
case class QuizResultBucket(title : String, description : String, id : Int) extends JsonModel{
  override def getJson: JsObject = {
    Json.obj(
      "title" -> title,
      "description" -> description,
      "id" -> id
    )
  }
}

case class Quiz(r2QuizId : Int, title : String, createdAt : DateTime, createdBy : String, updatedAt : DateTime, updatedBy: String,
                questions : List[QuizQuestion], resultBuckets : List[QuizResultBucket],  revealAtEnd : Boolean = true) extends JsonModel{

  lazy val QuizSecret = Play.current.configuration.getString("quizbuilder.secret").get;




  private def quizContentJson: JsObject = {
    import play.api.libs.json._
    Json.obj(
      "questions" -> questions.map(_.getJson),
      "personalityBuckets" -> Json.obj(
        "buckets" -> resultBuckets.map(_.getJson),
        "bucketDescriptionPrefix" -> "",
        "bucketTitlePrefix" -> ""
      )
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
      "quizType" -> "personality",  //TODO
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
