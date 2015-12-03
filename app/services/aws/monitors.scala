package services.aws

import com.amazonaws.auth.BasicAWSCredentials
import com.amazonaws.services.sqs.AmazonSQSClient
import com.amazonaws.services.sqs.model.GetQueueUrlRequest
import play.api.{Logger, Play}
import collection.JavaConversions._


trait MigrationDependencyMonitor{
  def isOverloaded : Boolean
  def hangback
  val resourceName : String
}


object DoNotOverload{

  def pauseIfAnyOverloaded(monitors : List[MigrationDependencyMonitor]) =
    monitors.foreach{ monitor =>
      if(monitor.isOverloaded){
        Logger.info(s"Hanging back for ${monitor.resourceName}")
        monitor.hangback
      }
    }

  def errorIfAnyOverloaded(monitors : List[MigrationDependencyMonitor]) =
    monitors.foreach{ monitor =>
      if(monitor.isOverloaded){
        throw new IllegalStateException(s"${monitor.resourceName} is overloaded")
      }
    }

  def apply[R](monitors : List[MigrationDependencyMonitor])(fn : () => R) : R = {
    pauseIfAnyOverloaded(monitors)
    errorIfAnyOverloaded(monitors)
    fn()
  }
}

object Monitors {

  private lazy val SqsEndpoint = Play.current.configuration.getString("aws.sqs.endpoint")
  private lazy val SqsAwsKeyId = Play.current.configuration.getString("aws.sqs.awskeyid")
  private lazy val SqsAwsSecretAccessKey = Play.current.configuration.getString("aws.sqs.secret")
  private lazy val LifecycleQueueName = Play.current.configuration.getString("aws.sqs.lifecycle.queuename")
  private lazy val MetadataQueueName = Play.current.configuration.getString("aws.sqs.metadata.queuename")

  private lazy val monitors : List[MigrationDependencyMonitor] = {
    for(sqsEndpoint <- SqsEndpoint;
        sqsAwsKeyId <- SqsAwsKeyId;
        sqsAwsSecretAccessKey <- SqsAwsSecretAccessKey)
      yield {

      new SqsQueueMonitor(sqsEndpoint, LifecycleQueueName.get, sqsAwsKeyId, sqsAwsSecretAccessKey) ::
      new SqsQueueMonitor(sqsEndpoint, MetadataQueueName.get, sqsAwsKeyId, sqsAwsSecretAccessKey) ::
      Nil
    }
  }.getOrElse(Nil)

  def doNotOverloadSubsystems[R] = DoNotOverload[R](monitors) _

}


class SqsQueueMonitor(  sqsEndpoint : String,
                        queueName: String,
                        awsAccessKey : String,
                        awsSecretKey : String) extends MigrationDependencyMonitor {

  val MaxDepth = 100
  val HangBackTime = 1000;

  private lazy val sqsClient = {
    val awsCredentials = new BasicAWSCredentials(awsAccessKey, awsSecretKey)
    val client = new AmazonSQSClient(awsCredentials)
    client.setEndpoint(sqsEndpoint)
    client
  }

  private lazy val queueUrl = {
    val queueNameLookupResponse =  sqsClient.getQueueUrl(new GetQueueUrlRequest(queueName))
    queueNameLookupResponse.getQueueUrl
  }

  def getQueueDepth : Int = {
    val attributeResult = sqsClient.getQueueAttributes(queueUrl, List("ApproximateNumberOfMessages"))
    val value = attributeResult.getAttributes.get("ApproximateNumberOfMessages")
    Logger.debug(s"${resourceName} queue depth is ${value}")
    value.toInt
  }


  def isOverloaded = getQueueDepth > MaxDepth

  override def hangback {
    Thread.sleep(HangBackTime);
  }

  override val resourceName: String = s"AWS SQS queue ${queueName}"
}
