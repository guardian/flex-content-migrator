package utils


import java.io.File

import org.specs2.mock.Mockito
import org.specs2.mutable._
import play.api.libs.Files.TemporaryFile

class TempFileProcessorSpec extends Specification with Mockito{

  lazy val imageFile = {
    val resource = getClass.getResource("/thumb.jpg")
    if(resource==null) throw new RuntimeException("Could not find /thumb.jpg")
    new File(resource.getFile)
  }

  private def mockPlayTempFile = {
    val mockFile = mock[TemporaryFile]
    mockFile.file returns imageFile
    mockFile
  }


  "TempFileProcessor" should {
    "correctly determine file suffix" in {
      TempFileProcessorImpl.getOriginalFileExtension("something.jpeg") must equalTo (".jpeg")
      TempFileProcessorImpl.getOriginalFileExtension("SOMETHING.JPEG") must equalTo (".jpeg")
      TempFileProcessorImpl.getOriginalFileExtension("something.jpeg ") must equalTo (".jpeg")
      TempFileProcessorImpl.getOriginalFileExtension("something.xml") must equalTo (".xml")
      TempFileProcessorImpl.getOriginalFileExtension("something.") must equalTo (".")
      TempFileProcessorImpl.getOriginalFileExtension("something") must equalTo ("")
    }
    "determine xml files do NOT need renaming" in {
      TempFileProcessorImpl.fileNeedsToRetainOriginalName("something.xml") must equalTo(false)
    }
    "determine image files DO need renaming" in {
      TempFileProcessorImpl.fileNeedsToRetainOriginalName("something.jpeg") must equalTo(false)
      TempFileProcessorImpl.fileNeedsToRetainOriginalName("something.jpg") must equalTo(false)
      TempFileProcessorImpl.fileNeedsToRetainOriginalName("something.bmp") must equalTo(false)
    }
    "creates a temporary file with the original name and copies the contents into that file" in {
      val originalFileName = "something.jpeg"
      val file = TempFileProcessorImpl.tempFileWithOriginalName(mockPlayTempFile, originalFileName)
      file.exists() must equalTo(true)
      file.getAbsolutePath.endsWith(originalFileName) must equalTo(true)
      file.length must equalTo (imageFile.length)
    }
    "creates a temp file for storing some xml" in {
      val xml = <somexml>test</somexml>
      val file = TempFileProcessorImpl.createTempFileForXml(xml)
      val xmlReadBack =  scala.io.Source.fromFile(file).getLines.reduceLeft(_+_)
      xmlReadBack must equalTo (xml.toString)
    }
  }


}
