package services.migration

import model._

import services.migration.r2._
import services.{FlexCartoonMigrationServiceImpl,FlexContentMigrationService}
import utils.{TempFileProcessorImpl, TempFileProcessor}



protected[migration] class CartoonMigrationBehaviour( r2 : R2CartoonMigratorService,
                                                      flexContentMigrationService: FlexContentMigrationService,
                                                      tempFileProcessor : TempFileProcessor) extends  MigrationBehaviour{

  class TransformR2CartoonToFlex() extends TransformR2ToFlex{
    def apply(content : SourceContent) : TransformedContent = TransformedCartoon(content)
  }

  override val contentLoader = r2
  override val contentTransform = new TransformR2CartoonToFlex
  override val pushToFlex = new PushToFlex(flexContentMigrationService, tempFileProcessor)
  override val closeContentInSource = new MigrateContentInR2(contentLoader)
}

protected[migration] class CartoonMigrator( r2CartoonMigrator : R2CartoonMigratorService,
                                            flexContentMigrationService: FlexContentMigrationService,
                                            tempFileProcessor : TempFileProcessor) extends Migrator{


  override val migrationBehaviour = new CartoonMigrationBehaviour(r2CartoonMigrator, flexContentMigrationService, tempFileProcessor)

}

object CartoonMigrator extends CartoonMigrator(R2CartoonMigratorServiceImpl, FlexCartoonMigrationServiceImpl, TempFileProcessorImpl){}


