package controllers.migration

import model._

trait MigrationReport{
  def reportMigratedBatch(batch : MigratedBatch) : String
  def reportSingleContent(content : ContentMigrationResult) : String
}

