package services

import java.io.File

import play.api.libs.ws.WSResponse
import play.api.test._
import org.specs2.mutable.Specification

import play.api.test.Helpers._



class AsyncCallerWithMultipartDataSpec extends RealEndpointTest  {


  val url = "http://jsonplaceholder.typicode.com/posts"   //this is a internet service that will always respond a certain way
  val expectedResponseFromPost = "\"id\": 101"

  private def validXmlImportRequest = new File(ValidVideoImportResource)

  "AsyncCallerWithMultipartData" should {
    "be able to connect external services and collect the response" in new WithApplication{
      val testCaller = new AsyncCallerWithMultipartData {}
      val response = Helpers.await[WSResponse](testCaller.makeAsyncCall(url, (validXmlImportRequest, "fileData"), Map()))
      response.status must equalTo(201)
      response.body must contain(expectedResponseFromPost)
    }
    "be able to connect external services and send params and collect the response" in new WithApplication{
      val testCaller = new AsyncCallerWithMultipartData {}
      val response = Helpers.await[WSResponse](testCaller.makeAsyncCall(url, (validXmlImportRequest, "fileData"), Map("someparam" -> "somevalue")))
      response.status must equalTo(201)
      val responseBody = response.body
      responseBody must contain(expectedResponseFromPost)


    }
  }

}
