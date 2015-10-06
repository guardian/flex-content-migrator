addCommandAlias("dist", ";play-artifact")


libraryDependencies ++= Seq(
  "com.google.guava" % "guava" % "18.0",
  "com.amazonaws" % "aws-java-sdk" % "1.9.23",
  "net.logstash.logback" % "logstash-logback-encoder" % "4.2",
  "com.lambdaworks" %% "jacks" % "2.3.3",
  "com.typesafe.akka" %% "akka-actor" % "2.3.11",
  "com.typesafe.akka" %% "akka-contrib" % "2.3.11"
)
