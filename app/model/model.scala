package model

import play.api.libs.ws.WSResponse
import services.migration.quizbuilder.{QuizImporterService, QuizImporterServiceImpl}
import services.migration.r2ToFlexConversion._


case class SourceContent(val id : Int, json : String)

case class MigrationBatch(sourceContent : Seq[SourceContent]){
  val started = System.currentTimeMillis()
}



abstract class TransformedContent(val sourceContent : SourceContent){
  val json :  Map[String, Any]
  val liveData : R2ToFlexContentConversion
}


case class TransformedQuiz(override val sourceContent : SourceContent, quizImporter : QuizImporterService = QuizImporterServiceImpl) extends TransformedContent(sourceContent){
  override val json = R2ToFlexQuizConversion.jsonMap(sourceContent.json)
  override val liveData = R2ToFlexQuizConversion.parseLiveData(json, quizImporter) //NOTE: using live data for migration
}



case class ContentInFlex(id : Int, response : WSResponse){
  val wasSuccess = {
    val bool = (response.body.contains("OK") && response.status == 200 && !response.body.contains("ERROR"))
    bool && composerId.isDefined
  }
  def composerId = ComposerResponse.getComposerIdFromResponse(response.body)
}

abstract class ContentMigrationResult{
  def wasSuccess : Boolean
}
case class MigratedContent(id : Int, composerId : String) extends ContentMigrationResult{
  override def wasSuccess = true
}
case class MigrationFailedContent(val id: Int, val reason : String) extends ContentMigrationResult{
  override def wasSuccess = false
}

case class MigratedBatch(migrated : Seq[MigratedContent], failed : Seq[MigrationFailedContent])


object MigrationFailedContent{
  def failedToPushToFlex(response : WSResponse) : String =
    s"Failed to push content into flex:\nSTATUS:${response.status}\nBODY\n${response.body}"
}
