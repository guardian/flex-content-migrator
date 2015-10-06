package controllers

import org.specs2.mutable._

import play.api.test._
import play.api.test.Helpers._



class ApplicationSpec extends Specification {

  "respond to the version Action" in {
    val result = controllers.Application.version()(FakeRequest())
    status(result) must equalTo(OK)
    contentType(result) must beSome("application/json")
    charset(result) must beSome("utf-8")
    contentAsString(result) must equalTo("1.0")
  }

  "respond to the healthcheck Action" in {
    val result = controllers.Application.healthcheck()(FakeRequest())
    status(result) must equalTo(OK)
    contentType(result) must beSome("text/plain")
    charset(result) must beSome("utf-8")
    contentAsString(result) must equalTo("healthcheck is OK")
  }
}
