package services.migration

import model._
import services.migration.r2._
import services.{FlexGalleryMigrationServiceImpl, FlexContentMigrationService}
import utils.{TempFileProcessorImpl, TempFileProcessor}


protected[migration] class GalleryMigrationBehaviour( r2 : R2GalleryMigratorService,
                                                      flexContentMigrationService: FlexContentMigrationService,
                                                      tempFileProcessor : TempFileProcessor) extends  MigrationBehaviour{

  class TransformR2GalleryToFlex() extends TransformR2ToFlex{
    def apply(content : SourceContent) : TransformedContent = TransformedGallery(content)
  }

  override val contentLoader = r2
  override val contentTransform = new TransformR2GalleryToFlex
  override val pushToFlex = new PushToFlex(flexContentMigrationService, tempFileProcessor)
  override val closeContentInSource = new MigrateContentInR2(contentLoader)
}

protected[migration] class GalleryMigrator( r2GalleryMigrator : R2GalleryMigratorService,
                                            flexContentMigrationService: FlexContentMigrationService,
                                            tempFileProcessor : TempFileProcessor) extends Migrator{


  override val migrationBehaviour = new GalleryMigrationBehaviour(r2GalleryMigrator, flexContentMigrationService, tempFileProcessor)

}

object GalleryMigrator extends GalleryMigrator(R2GalleryMigratorServiceImpl, FlexGalleryMigrationServiceImpl, TempFileProcessorImpl){}


