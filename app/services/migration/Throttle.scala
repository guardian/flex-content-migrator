package services.migration


import akka.actor._
import play.Logger
import scala.util.Random
import akka.util.Timeout
import scala.concurrent.duration._
import akka.pattern.ask
import scala.concurrent.Future
import akka.contrib.throttle.Throttler._
import akka.contrib.throttle.TimerBasedThrottler

trait ThrottleControl{
  private val random = new Random()

  /**
   * Returns a future for the given work.
   * It will be only be performed once the throttle is happy.
   */
  def throttler[T](throttle : Throttle)(work : => T) : Future[T] = {
    smallRandomDelay() //randomise the behaviour so we dont arrive all at the same time
    throttle.performThrottledWork[T](() => work)
  }

  import scala.concurrent.ExecutionContext.Implicits.global

  /**
   * The given future work will only be performed once the throttle is happy,
   * and the two futures are combined into one
   */
  def futureWorkThrottler[T](throttle : Throttle)(work : => Future[T]) : Future[T] =
    throttler[Future[T]](throttle)(work).flatMap(identity)

  private def smallRandomDelay(max : Int = 30) {
    Thread.sleep(random.nextInt(max))
  }


}

object ThrottleControl extends ThrottleControl{

  private val system = ActorSystem("throttleSystem")

  val defaultRate = 10 msgsPer 1.second

  def throttle(rate : Rate = defaultRate) = new Throttle(system, rate)

  private val flexThrottle = throttle(1 msgsPer 1.second) //slowly does it with Flex or we will flood the R2 queues with events
  private val r2Throttle = throttle(4 msgsPer 1.second)   //r2 should be a bit quicker than flex: avoid too much time half migrated

  def flexThrottler[T] = throttler[T](flexThrottle) _
  def r2Throttler[T] = throttler[T](r2Throttle) _

  def flexThrottlerFt[T] = futureWorkThrottler[T](flexThrottle) _
  def r2ThrottlerFt[T] = futureWorkThrottler[T](r2Throttle) _

}


// A simple actor that invokes whatever function it receives and returns to the result to the sender
class FunctionInvokerActor extends Actor {
  def receive = {
    case functionMsg : FunctionMessage[_] => {
      val response = functionMsg.theFunction.apply()
      sender ! response
    }
    case x : Any => throw new RuntimeException(s"Invoked with unrecognised message type : ${x}")
  }
}

case class FunctionMessage[T](theFunction : () => T)

class DeadLetterActor extends Actor{
  override def receive: Receive = {
    case d : DeadLetter => {
      Logger.error(s"Throttler dead message! ${d.message.toString}") //TODO: return this to the asker?
    }
  }
}

class Throttle(system : ActorSystem, rate : Rate) {

  import scala.language.postfixOps

  implicit val timeout = Timeout(5 minute) //this value should be larger than the calling client's timeout
  private val throttledInvoker = throttledActor(system.actorOf(Props[FunctionInvokerActor]))

  private def throttledActor(underlying : ActorRef) = {
    val throttledActor = system.actorOf(Props(classOf[TimerBasedThrottler], rate))
    throttledActor ! SetTarget(Some(underlying))
    throttledActor
  }

  system.eventStream.subscribe(system.actorOf(Props[DeadLetterActor]), classOf[DeadLetter])


  def performThrottledWork[T]( work : () => T) : Future[T] = {
    val msg = FunctionMessage[T](work)
    ask( throttledInvoker, msg).asInstanceOf[Future[T]]
  }

}




