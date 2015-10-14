package services.migration

import java.util.Locale

import org.joda.time.{DateTime, DateTimeZone}
import org.joda.time.format.DateTimeFormat
import org.specs2.mutable.Specification


class R2DateConverterSpec extends Specification  {

  val flexDateFormat =
    DateTimeFormat.forPattern("yyyyMMddHHmm").withLocale(Locale.UK).withZone(DateTimeZone.forID("Europe/London"))

  def getXmlDateAsFlexWould(xmlDate : String) : DateTime = {
    flexDateFormat.parseDateTime(xmlDate)
  }

  "R2DateConverter" should {
    "leaves BST times alone" in {
      //flex will perform the conversion for us
      val bstTime = "2007-10-24T11:48:00.000+01:00"
      val xmlDate = R2DateConversion.jsonToXmlDateTime(bstTime)
      getXmlDateAsFlexWould(xmlDate).toString() must equalTo(bstTime)
    }
    "leave GMT times alone" in {
      val gmtTime = "2007-02-22T17:39:00.000Z"
      val xmlDate = R2DateConversion.jsonToXmlDateTime(gmtTime)
      getXmlDateAsFlexWould(xmlDate).toString() must equalTo(gmtTime)
    }
    "live example" in {
      val example = "2007-08-10T10:25:00.000+01:00"
      val xmlDate = R2DateConversion.jsonToXmlDateTime(example)
      getXmlDateAsFlexWould(xmlDate).toString() must equalTo(example)
    }
  }

}
