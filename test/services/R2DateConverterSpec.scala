package services.migration

import org.specs2.mutable.Specification


class R2DateConverterSpec extends Specification  {

  "R2DateConverter" should {
    "convert BST times into GMT" in {
      val bstTime = "2007-10-24T11:48:10.000+01:00"
      val xmlDate = R2DateConversion.jsonToXmlDateTime(bstTime)
      xmlDate must equalTo("200710241048")
    }
    "leave GMT times alone" in {
      val bstTime = "2007-02-22T17:39:39.000Z"
      val xmlDate = R2DateConversion.jsonToXmlDateTime(bstTime)
      xmlDate must equalTo("200702221739")
    }
  }

}
