package services.migration

import model._
import play.Logger
import services.migration.batch.AkkaBatchMigrator
import services.migration.r2.{R2MigrationService, R2VideoMigratorServiceImpl, R2VideoMigratorService}
import services.{FlexContentMigrationService, FlexVideoIntegrationServiceImpl}
import utils.{TempFileProcessorImpl, TempFileProcessor}
import scala.concurrent.Future


protected[migration] class VideoMigrationBehaviour( r2 : R2VideoMigratorService,
                                                    flexContentMigrationService: FlexContentMigrationService,
                                                    tempFileProcessor : TempFileProcessor) extends  MigrationBehaviour{

  class TransformR2VideoToFlex() extends TransformR2ToFlex{
    def apply(content : SourceContent) : TransformedContent = TransformedVideo(content)
  }

  override val contentLoader = r2
  override val contentTransform = new TransformR2VideoToFlex
  override val pushToFlex = new PushToFlex(flexContentMigrationService, tempFileProcessor)
  override val closeContentInSource = new MigrateContentInR2(contentLoader)
}

protected[migration] class VideoMigrator( r2VideoMigrator : R2VideoMigratorService,
                                          flexContentMigrationService: FlexContentMigrationService,
                                          tempFileProcessor : TempFileProcessor) extends Migrator{


  override val migrationBehaviour = new VideoMigrationBehaviour(r2VideoMigrator, flexContentMigrationService, tempFileProcessor)

}

object VideoMigrator extends VideoMigrator(R2VideoMigratorServiceImpl, FlexVideoIntegrationServiceImpl, TempFileProcessorImpl){}


