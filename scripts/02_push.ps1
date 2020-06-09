$REGISTRY_BASE='tstrohmeier'

function pushImages($imagename) {
  Write-Output "----------  START: Pushing Docker Image $imagename  ----------"
  docker push $REGISTRY_BASE/$imagename
  Write-Output "----------  END: Pushing Docker Image $imagename  ----------"
}


# Spark Base Image with Hadoop and SBT
pushImages spark-development:2.2.0
pushImages spark-development:2.4.5

# Derived Images
pushImages spark-development:2.4.5-gradle-6.5
pushImages spark-development:2.4.5-pip3
