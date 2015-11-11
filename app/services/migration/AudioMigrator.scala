package services.migration

import model._
import services.migration.r2._
import services.{FlexAudioMigrationServiceImpl, FlexContentMigrationService}
import utils.{TempFileProcessorImpl, TempFileProcessor}


protected[migration] class AudioMigrationBehaviour(    r2 : R2AudioMigratorService,
                                                      flexContentMigrationService: FlexContentMigrationService,
                                                      tempFileProcessor : TempFileProcessor) extends  MigrationBehaviour{

  class TransformR2AudioToFlex() extends TransformR2ToFlex{
    def apply(content : SourceContent) : TransformedContent = TransformedAudio(content)
  }

  override val contentLoader = r2
  override val contentTransform = new TransformR2AudioToFlex
  override val pushToFlex = new PushToFlex(flexContentMigrationService, tempFileProcessor)
  override val closeContentInSource = new MigrateContentInR2(contentLoader)
}

protected[migration] class AudioMigrator(    r2AudioMigrator : R2AudioMigratorService,
                                            flexContentMigrationService: FlexContentMigrationService,
                                            tempFileProcessor : TempFileProcessor) extends Migrator{


  override val migrationBehaviour = new AudioMigrationBehaviour(r2AudioMigrator, flexContentMigrationService, tempFileProcessor)

}

object AudioMigrator extends AudioMigrator(R2AudioMigratorServiceImpl, FlexAudioMigrationServiceImpl, TempFileProcessorImpl){}


