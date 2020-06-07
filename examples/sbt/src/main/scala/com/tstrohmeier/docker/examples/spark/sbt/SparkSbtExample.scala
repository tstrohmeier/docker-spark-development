package com.tstrohmeier.docker.examples.spark.sbt

import org.apache.spark.sql.SparkSession

object SparkSbtExample {
  def main(args: Array[String]) {
    val spark = SparkSession.builder.appName("Spark Sbt Example").getOrCreate()
    println(s" Hello Spark Example !")
    spark.stop()
  }
}