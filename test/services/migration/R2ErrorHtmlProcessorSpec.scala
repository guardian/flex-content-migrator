package services.migration


import org.specs2.mock.Mockito
import play.api.test.PlaySpecification
import services.migration.r2.R2ErrorHtmlProcessor

class R2ErrorHtmlProcessorSpec extends PlaySpecification with Mockito  {

  val r2Html =
    s"""
        |<html>
        |<head>
        |//loadofstuff
        |</head>
        |<body>
        |	<p>identifier of an instance of com.gu.r2.common.model.page.DraftContentPage was altered from 237278 to -1<p />
        |<a href="#" id="errorLink">Show full details</a>
        |<div id="errorDisplay">
        |<pre>
        |org.hibernate.HibernateException: identifier of an instance of com.gu.r2.common.model.page.DraftContentPage was altered from 237278 to -1
        |	at org.hibernate.event.def.DefaultFlushEntityEventListener.checkId(DefaultFlushEntityEventListener.java:81)
        |	at org.hibernate.event.def.DefaultFlushEntityEventListener.getValues(DefaultFlushEntityEventListener.java:187)
        |	at org.hibernate.event.def.DefaultFlushEntityEventListener.onFlushEntity(DefaultFlushEntityEventListener.java:143)
        |	at org.hibernate.event.def.AbstractFlushingEventListener.flushEntities(AbstractFlushingEventListener.java:219)
        |	at org.hibernate.event.def.AbstractFlushingEventListener.flushEverythingToExecutions(AbstractFlushingEventListener.java:99)
        |</pre>
        |</div>
        |
        |<script>
        |//morestuff
        |</script></body>
        |</html>
     """.stripMargin


    def expectedContent =
      s"""org.hibernate.HibernateException: identifier of an instance of com.gu.r2.common.model.page.DraftContentPage was altered from 237278 to -1
         |	at org.hibernate.event.def.DefaultFlushEntityEventListener.checkId(DefaultFlushEntityEventListener.java:81)
         |	at org.hibernate.event.def.DefaultFlushEntityEventListener.getValues(DefaultFlushEntityEventListener.java:187)
         |	at org.hibernate.event.def.DefaultFlushEntityEventListener.onFlushEntity(DefaultFlushEntityEventListener.java:143)
         |	at org.hibernate.event.def.AbstractFlushingEventListener.flushEntities(AbstractFlushingEventListener.java:219)
         |	at org.hibernate.event.def.AbstractFlushingEventListener.flushEverythingToExecutions(AbstractFlushingEventListener.java:99)""".stripMargin


  "R2ErrorHtmlProcessor" should {
    "extract the interesting part of R2 error html" in {
      R2ErrorHtmlProcessor.getInterestingContentFromHtml(r2Html) must equalTo(expectedContent)
    }
    "return unrecognised input unchanged" in {
      R2ErrorHtmlProcessor.getInterestingContentFromHtml("something unrecognised") must equalTo("something unrecognised")
    }
  }


}
