package services.migration

import java.util.concurrent.TimeUnit._
import java.util.concurrent.atomic.AtomicInteger

import akka.util.Timeout
import play.api.test.Helpers
import org.specs2.mutable.Specification



import scala.concurrent.Future

class ThrottleSpec extends Specification {

  implicit val timeout = Timeout(30, SECONDS)



  import ThrottleControl._

  val testThrottle = throttle()

  def withSimpleThrottler = throttler[Int](testThrottle) _

  def withFutureTaskThrottler = futureWorkThrottler[Int](testThrottle) _


  "ThrottleControl" should{
    "Limit the rate at which we can count to 100" in {
      val counter = new AtomicInteger
      val startTime = System.currentTimeMillis()

      val promisedResponses =
        for(i <- 1 to 100)
        yield
              withSimpleThrottler{
                //this code will be throttled
                counter.incrementAndGet()
              }

      val responses = Helpers.await(Future.sequence(promisedResponses))

      //check the processing times were correct - it should have
      //taken us at least 10 seconds as that is the throttling rate
      val elapsedTime = System.currentTimeMillis() - startTime
      elapsedTime should be greaterThan(10)

      //check that all of the results look correct
      counter.get() must equalTo(100) //we were invoked enough times
      responses.size must equalTo(100) //we got all the results back

    }
    "Compose futures neatly" in {
      val counter = new AtomicInteger
      val startTime = System.currentTimeMillis()

      val promisedResponses =
        for(i <- 1 to 100)
          yield
          withFutureTaskThrottler{
            //this future code will be throttled and combined with the underlying future
            Future{counter.incrementAndGet()}
          }

      val responses = Helpers.await(Future.sequence(promisedResponses)) //wait for just one set of futures

      //check the processing times were correct - it should have
      //taken us at least 10 seconds as that is the throttling rate
      val elapsedTime = System.currentTimeMillis() - startTime
      elapsedTime should be greaterThan(10)

      //check that all of the results look correct
      counter.get() must equalTo(100) //we were invoked enough times
      responses.size must equalTo(100) //we got all the results back

    }
    "Compose futures that produce errors" in {
      {
        val promisedResponse =
          withFutureTaskThrottler{
            Future{throw new RuntimeException("Something went BANG!")}
          }

        Helpers.await(promisedResponse) //wait for just one set of futures
      } must throwAn[RuntimeException]
    }
  }

}
