package controllers

import play.api.Logger
import play.api.libs.json._
import play.api.mvc._
import services.aws.AwsInstanceTags

object Application extends Controller with AwsInstanceTags{

  private val apiVersion = 1.0f
  lazy val stageOpt = readTag("Stage")

  def version = Action {
    Logger.debug("version")
    Ok(Json.toJson(apiVersion))
  }


  def index = Action {
    Ok(views.html.index(stageOpt.getOrElse("local")))
  }

  def healthcheck = Action {
    Ok("healthcheck is OK")
  }


}
