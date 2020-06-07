
name := "spark-sbt-example"

organization := "com.tstrohmeier"

version := "1.0"

scalaVersion := "2.12.10"


// https://mvnrepository.com/artifact/org.apache.spark/spark-core
libraryDependencies += "org.apache.spark" %% "spark-core" % "2.4.5"

// https://mvnrepository.com/artifact/org.apache.spark/spark-sql
libraryDependencies += "org.apache.spark" %% "spark-sql" % "2.4.5"


mainClass in Compile := Some("com.tstrohmeier.docker.examples.spark.sbt.SparkSbtExample")
