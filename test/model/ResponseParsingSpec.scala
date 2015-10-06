package model

import org.specs2.mock.Mockito
import play.api.test.{PlaySpecification}


class ResponseParsingSpec extends PlaySpecification with Mockito {



  "ComposerResponse" should {
    val composerContentId = "a1b2c3d4"
    "extract composer content ID from CREATED response messages" in {
      val response = ComposerResponse.
        getComposerIdFromResponse(s"OK:${composerContentId};http://someurlorother.com;CREATED")
      response must equalTo(Some(composerContentId))
    }
    "extract composer content ID from MODIFIED response messages" in {
      val response = ComposerResponse.
        getComposerIdFromResponse(s"OK:${composerContentId};http://someurlorother.com;MODIFIED")
      response must equalTo(Some(composerContentId))
    }
    "deal with empty response messages" in {
      val response = ComposerResponse.
        getComposerIdFromResponse(s"")
      response must equalTo(None)
    }
    "deal with junk response messages" in {
      val response = ComposerResponse.
        getComposerIdFromResponse("some junk")
      response must equalTo(None)
    }
  }

  "R2Response" should {
    val r2ContentId = "456269969"
    "extract R2 content ID from CREATED response messages" in {
      val response = R2Response.
        getR2IdFromResponse(s"OK:${r2ContentId};http://someurlorother.com;CREATED")
      response must equalTo(Some(r2ContentId))
    }
    "extract R2 content ID from MODIFIED response messages" in {
      val response = R2Response.
        getR2IdFromResponse(s"OK:${r2ContentId};http://someurlorother.com;MODIFIED")
      response must equalTo(Some(r2ContentId))
    }
    "deal with empty response messages" in {
      val response = R2Response.
        getR2IdFromResponse(s"")
      response must equalTo(None)
    }
    "deal with junk response messages" in {
      val response = R2Response.
        getR2IdFromResponse("some junk")
      response must equalTo(None)
    }
  }

}
