package services.migration

import R2CMSPathCleaner._

import org.specs2.mutable.Specification


class R2CMSPathCleanerSpec extends Specification  {

  "R2CMSPathCleaner" should {
    "remove '/Guardian' prefix from R2 CMS path" in {
      R2CMSPathCleaner.cleanPath("/Guardian/accenture-partner-zone/video/accenture-analytics-video") must
        equalTo("accenture-partner-zone/video/accenture-analytics-video")
    }
    "remove '/Saferjobs' prefix from R2 CMS path" in {
      R2CMSPathCleaner.cleanPath("/Saferjobs/video/nigel-evans") must equalTo("video/nigel-evans")
    }
  }

}
