package utils

import java.io.{FileWriter, BufferedWriter, File}

import com.google.common.io.Files
import play.Logger
import play.api.libs.Files.TemporaryFile
import play.api.mvc.MultipartFormData.FilePart

import scala.xml.Elem


trait TempFileProcessor {

  /**
   * Treats the Play temporary file from a multipart upload to ensure it retains its original name (including extension)
   * Downstream systems like R2 care about the original file's name and extension.
   * It cares about the extension because it has logic surrounding it (image must be a .jpg, .bmp etc) and
   * the name is important because users will potentially see it in URLs.
   * Play handles multipart data by creating temp files that have a completely different name to the uploaded file.
   * This function will rename the file so that it keeps these original file name details
   */
  def treatForName(dataFile : FilePart[TemporaryFile]) : File;

  def createTempFileForXml(xml : Elem) : File

}

final object TempFileProcessorImpl extends TempFileProcessor{


  override def createTempFileForXml(xml : Elem) : File = {
    var tempFile = File.createTempFile("mgr", ".xml");
    tempFile.deleteOnExit();
    val bw = new BufferedWriter(new FileWriter(tempFile));
    bw.write(xml.toString);
    bw.close();
    tempFile
  }

  override def treatForName(dataFile : FilePart[TemporaryFile]) : File = {
    val originalExtension = getOriginalFileExtension(dataFile.filename)
    if(fileNeedsToRetainOriginalName(originalExtension)){
      //we need to rename this file to keep the original name.
      tempFileWithOriginalName(dataFile.ref, dataFile.filename)
    }
    else{
      //use this temp file as-is, we do not care about the original file's name or extension
      dataFile.ref.file
    }
  }

  private[utils] def getOriginalFileExtension(originalFileName : String ) =
    if(!originalFileName.contains(".")) ""
    else (originalFileName.drop (originalFileName.lastIndexOf("."))).toLowerCase.trim

  private[utils] def fileNeedsToRetainOriginalName( originalExtension : String ): Boolean = {
    originalExtension match {
      case ".jpg" | ".jpeg" => true
      case ".gif" => true
      case ".png" => true
      case ".bmp" => true
      case _ => false
    }
  }

  private def createTempFileWithOriginalName(originalName : String) = {
    val file = new File(s"${Files.createTempDir.getAbsolutePath}/${originalName}")
    file.deleteOnExit()
    file
  }


  private def copy(temporaryFile : TemporaryFile, tempFileWithCorrectName : File){
    //temporaryFile.moveTo(tempFileWithCorrectName) //the play method of moving the temp file not working, use Guava instead
    Logger.debug(s"performing copy of file ${temporaryFile.file.getAbsolutePath} to ${tempFileWithCorrectName.getAbsolutePath}");
    Files.copy(temporaryFile.file, tempFileWithCorrectName)
  }


  private[utils] def tempFileWithOriginalName(playTemporaryFile : TemporaryFile, originalName : String) = {
    val tempFileWithOriginalName = createTempFileWithOriginalName(originalName)
    copy(playTemporaryFile, tempFileWithOriginalName)
    tempFileWithOriginalName
  }
}
