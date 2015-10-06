package services


import java.io.File

import com.ning.http.client.FilePart
import play.api.{Logger, Play}
import play.api.libs.ws.{WSResponse, WS}
import play.api.libs.ws.ning.NingWSResponse
import services.aws.{Metrics, CountMetric}

import scala.concurrent.{Promise, Future}
import play.api.Play.current
import com.ning.http.client.{Response => AHCResponse, _}

trait AsyncCallerWithMultipartData{
  //NOTE: WS does not support multi part form upload directly
  //so we have to se the underlying client
  private def getClient: AsyncHttpClient = WS.client.underlying

  private def buildRequestWithMultipartData(url : String, parts : List[Part]) : Request = {
    //need to send the data in a multi part request for R2
    val reqBuilder = new RequestBuilder("POST").setUrl(url).setHeader("Content-type", "multipart/form-data")
    parts.foreach( reqBuilder.addBodyPart(_))
    reqBuilder.build;
  }

  private def formDataAsParts(formData : Map[String, String]) : List[Part] = {
    formData.map( nameValuePair => new StringPart(nameValuePair._1, nameValuePair._2) ).toList
  }

  private def fileAsPart(xmlFileWithName : (File, String)) : Part = {
    new FilePart(xmlFileWithName._2, xmlFileWithName._1, "application/xml", "UTF-8")
  }

  import play.api.libs.concurrent.Execution.Implicits._
  def makeAsyncCall(url : String, xmlFileWithName : (File, String), formData : Map[String, String]) :  Future[WSResponse] = {

    var result = Promise[NingWSResponse]()
    val client = getClient
    val parts = fileAsPart(xmlFileWithName) :: formDataAsParts(formData)

    client.executeRequest(buildRequestWithMultipartData(url, parts),
      new AsyncCompletionHandler[AHCResponse]() {
        override def onCompleted(response: AHCResponse) = {
          val statusCode = response.getStatusCode
          if(statusCode != 200){
            Logger.debug(s"Interesting status code response from  ${url} : ${statusCode}" )
          }
          result.success(NingWSResponse(response))
          response
        }
        override def onThrowable(t: Throwable) = {
          Logger.error(s"error in async proxying to ${url}", t)
          result.failure(t)
          super.onThrowable(t)
        }
      })
    result.future
  }

}