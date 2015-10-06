import com.gu.deploy.PlayArtifact._
import play.PlayImport.PlayKeys._
import play.PlayImport._
import sbt._
import sbt.Keys._

object FlexContentMigratorBuild extends Build {

  val libDependencies = Seq(
    ws
  )

  val commonSettings = Seq(
    scalaVersion := "2.11.1",
    scalaVersion in ThisBuild := "2.11.1",
    organization := "com.gu",
    version      := "0.1",
    resolvers ++= Seq("Typesafe Repository" at "http://repo.typesafe.com/typesafe/releases/"),
    scalacOptions ++= Seq("-feature", "-deprecation", "-language:higherKinds", "-Xfatal-warnings"),
    doc in Compile <<= target.map(_ / "none"),
    incOptions := incOptions.value.withNameHashing(nameHashing = true)
  )

  lazy val root = Project("flex-content-migrator", file(".")).enablePlugins(play.PlayScala)
    .settings(commonSettings ++ playArtifactDistSettings :_*)
    .settings(libraryDependencies ++= libDependencies)
    .settings(magentaPackageName := "flex-content-migrator")
    .settings(playDefaultPort := 9100)

  unmanagedClasspath in Test += baseDirectory.value / "test/resources"
}