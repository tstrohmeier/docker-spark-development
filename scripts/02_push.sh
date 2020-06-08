#!/bin/sh

set -e

REGISTRY_BASE=tstrohmeier

push_images() {
  echo "----------  START: Pushing Docker Image $1  ----------"
  docker push $REGISTRY_BASE/$1
  echo "----------  END: Pushing Docker Image $1  ----------"
}


# Spark Base Image with Hadoop and SBT
push_images spark-development:2.2.0
push_images spark-development:2.4.5

# Derived Images
push_images spark-development:2.4.5-gradle-6.5
push_images spark-development:2.4.5-pip3
