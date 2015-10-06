package model

object ComposerResponse{
  val composerResponseRegEx = """OK:\w*""".r
  def getComposerIdFromResponse(response : String) : Option[String] = {
    composerResponseRegEx.findFirstIn(response).map (_.replace("OK:", ""))
  }
}


object R2Response{
  val r2ResponseRegEx = """OK:\d*""".r
  def getR2IdFromResponse(response : String) : Option[String] = {
    r2ResponseRegEx.findFirstIn(response).map (_.replace("OK:", ""))
  }
}


