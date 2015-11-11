package services.migration

import model._
import services.migration.r2._
import services.{FlexArticleMigrationServiceImpl, FlexContentMigrationService}
import utils.{TempFileProcessorImpl, TempFileProcessor}


protected[migration] class ArticleMigrationBehaviour(  r2 : R2ArticleMigratorService,
                                                       flexContentMigrationService: FlexContentMigrationService,
                                                       tempFileProcessor : TempFileProcessor) extends  MigrationBehaviour{

  class TransformR2ArticleToFlex() extends TransformR2ToFlex{
    def apply(content : SourceContent) : TransformedContent = TransformedArticle(content)
  }

  override val contentLoader = r2
  override val contentTransform = new TransformR2ArticleToFlex
  override val pushToFlex = new PushToFlex(flexContentMigrationService, tempFileProcessor)
  override val closeContentInSource = new MigrateContentInR2(contentLoader)
}

protected[migration] class ArticleMigrator(  r2ArticleMigrator : R2ArticleMigratorService,
                                             flexContentMigrationService: FlexContentMigrationService,
                                             tempFileProcessor : TempFileProcessor) extends Migrator{


  override val migrationBehaviour = new ArticleMigrationBehaviour(r2ArticleMigrator, flexContentMigrationService, tempFileProcessor)

}

object ArticleMigrator extends ArticleMigrator(R2ArticleMigratorServiceImpl, FlexArticleMigrationServiceImpl, TempFileProcessorImpl){}


