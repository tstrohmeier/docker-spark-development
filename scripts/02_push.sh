#!/bin/sh

set -e

REGISTRY_BASE=tstrohmeier

push_images() {
  echo "----------  START: Pushing Docker Image $2  ----------"
  docker push $REGISTRY_BASE/$2
  echo "----------  END: Pushing Docker Image $2  ----------"
}


# Spark Base Image with Hadoop and SBT
push_images ./docker/spark/2.2.0  spark-development:2.2.0
push_images ./docker/spark/2.4.5  spark-development:2.4.5

# Derived Images
push_images ./docker/gradle/6.5  spark-development:2.4.5-gradle-6.5