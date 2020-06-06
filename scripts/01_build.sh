#!/bin/sh

set -e


build_images() {
  echo "----------  START: Building Docker Image $2  ----------"
  docker build -t tstrohmeier/$2 $1
  echo "----------  END: Building Docker Image $2  ----------"
}


# Spark Base Image with Hadoop and SBT
build_images ./docker/spark/2.2.0  spark-development:2.2.0
build_images ./docker/spark/2.4.5  spark-development:2.4.5

# Derived Images
build_images ./docker/gradle/6.5  spark-development:2.4.5-gradle-6.5