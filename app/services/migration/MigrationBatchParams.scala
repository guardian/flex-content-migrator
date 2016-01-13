package services.migration

import play.Logger


case class MigrationBatchParams private(batchSize : Int, batchNumber : Int, tagIds : Option[String], withIdsHigherThan : Option[Int])

object MigrationBatchParams{
  import Migrator._

  private def batchSizeOrDefault(batchSize : Option[Int]) : Int = {
    val size = batchSize.getOrElse(DefaultMigrationBatchSize)
    if(size<=MaxMigrationBatchSize) size
    else{
      Logger.warn(s"Cannot migrate a batch bigger than ${MaxMigrationBatchSize}, migrating ${MaxMigrationBatchSize} only")
      MaxMigrationBatchSize
    }
  }

  private def batchNumberOrDefault(batchNumber : Option[Int]) : Int = {
    batchNumber.getOrElse(1) match {
      case x if(x<0) => 1
      case y : Int => y
    }
  }

  def apply(batchSize : Option[Int], batchNumber : Option[Int], tagIds : Option[String] = None, withIdsHigherThan : Option[Int] = None) = {
    new MigrationBatchParams(batchSizeOrDefault(batchSize), batchNumberOrDefault(batchNumber), tagIds, withIdsHigherThan)
  }
}



