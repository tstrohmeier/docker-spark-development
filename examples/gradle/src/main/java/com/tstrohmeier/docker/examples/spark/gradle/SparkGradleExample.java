package com.tstrohmeier.docker.examples.spark.gradle;

import org.apache.spark.sql.SparkSession;

public class SparkGradleExample {
    public static void main(String[] args) {
        SparkSession spark = SparkSession.builder().appName("Spark Gradle Example").getOrCreate();

        System.out.println("Hello Spark Example!");

        spark.stop();
    }
}
