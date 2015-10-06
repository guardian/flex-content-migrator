package model

import play.api.libs.ws.WSResponse
import services.migration.{R2ToFlexGalleryConversion, R2ToFlexContentConversion, R2ToFlexVideoConversion}


case class SourceContent(val id : Int, json : String)

case class MigrationBatch(sourceContent : Seq[SourceContent]){
  val started = System.currentTimeMillis()
}

abstract class TransformedContent(val sourceContent : SourceContent){
  val json :  Map[String, Any]
  val liveData : R2ToFlexContentConversion
  val draftData : R2ToFlexContentConversion
}

case class TransformedVideo(override val sourceContent : SourceContent) extends TransformedContent(sourceContent){
  override val json = R2ToFlexVideoConversion.jsonMap(sourceContent.json)
  override val liveData = R2ToFlexVideoConversion.parseLiveData(json)
  override val draftData = R2ToFlexVideoConversion.parseDraftData(json)
}

case class TransformedGallery(override val sourceContent : SourceContent) extends TransformedContent(sourceContent){
  override val json = R2ToFlexGalleryConversion.jsonMap(sourceContent.json)
  override val liveData = R2ToFlexGalleryConversion.parseLiveData(json)
  override val draftData = R2ToFlexGalleryConversion.parseDraftData(json)
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
