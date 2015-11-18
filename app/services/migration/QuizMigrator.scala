package services.migration

import model._
import services.migration.r2._
import services.{FlexQuizMigrationServiceImpl, FlexContentMigrationService}
import utils.{TempFileProcessorImpl, TempFileProcessor}


protected[migration] class QuizMigrationBehaviour(    r2 : R2QuizMigratorService,
                                                      flexContentMigrationService: FlexContentMigrationService,
                                                      tempFileProcessor : TempFileProcessor) extends  MigrationBehaviour{

  class TransformR2QuizToFlex() extends TransformR2ToFlex{
    def apply(content : SourceContent) : TransformedContent = TransformedQuiz(content)
  }

  override val contentLoader = r2
  override val contentTransform = new TransformR2QuizToFlex
  override val pushToFlex = new PushToFlex(flexContentMigrationService, tempFileProcessor)
  override val closeContentInSource = new MigrateContentInR2(contentLoader)
}

protected[migration] class QuizMigrator(    r2QuizMigrator : R2QuizMigratorService,
                                            flexContentMigrationService: FlexContentMigrationService,
                                            tempFileProcessor : TempFileProcessor) extends Migrator{


  override val migrationBehaviour = new QuizMigrationBehaviour(r2QuizMigrator, flexContentMigrationService, tempFileProcessor)

}

object QuizMigrator extends QuizMigrator(R2QuizMigratorServiceImpl, FlexQuizMigrationServiceImpl, TempFileProcessorImpl){}

