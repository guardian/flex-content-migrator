package services.migration

import model._
import services.migration.r2._
import services.{FlexCrosswordMigrationServiceImpl, FlexContentMigrationService}
import utils.{TempFileProcessorImpl, TempFileProcessor}


protected[migration] class CrosswordMigrationBehaviour( r2 : R2CrosswordMigratorService,
  flexContentMigrationService: FlexContentMigrationService,
  tempFileProcessor : TempFileProcessor) extends  MigrationBehaviour{

  class TransformR2CrosswordToFlex() extends TransformR2ToFlex{
    def apply(content : SourceContent) : TransformedContent = TransformedCrossword(content)
  }

  override val contentLoader = r2
  override val contentTransform = new TransformR2CrosswordToFlex
  override val pushToFlex = new PushToFlex(flexContentMigrationService, tempFileProcessor)
  override val closeContentInSource = new MigrateContentInR2(contentLoader)
}

protected[migration] class CrosswordMigrator(r2AudioMigrator : R2CrosswordMigratorService,
                                             flexContentMigrationService: FlexContentMigrationService,
                                             tempFileProcessor : TempFileProcessor) extends Migrator{


  override val migrationBehaviour = new CrosswordMigrationBehaviour(r2AudioMigrator, flexContentMigrationService, tempFileProcessor)

}

object CrosswordMigrator extends CrosswordMigrator(R2CrosswordMigratorServiceImpl, FlexCrosswordMigrationServiceImpl, TempFileProcessorImpl){}

