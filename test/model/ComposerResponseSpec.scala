package model

import org.specs2.mock.Mockito
import play.api.test.{PlaySpecification}


class ComposerResponseSpec extends PlaySpecification with Mockito {

  val composerContentId = "a1b2c3d4"

  "ComposerResponse" should {
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

}
