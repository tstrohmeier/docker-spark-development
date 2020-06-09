function buildImages([string] $folder, [string]$image) {
  Write-Output "----------  START: Building Docker Image $image ----------"
  docker build -t tstrohmeier/$image $folder
  Write-Output "----------  END: Building Docker Image $image  ----------"
}


# Spark Base Image with Hadoop and SBT
buildImages './docker/spark/2.2.0' 'spark-development:2.2.0';
buildImages './docker/spark/2.4.5' 'spark-development:2.4.5';

# Derived Images
buildImages './docker/gradle/6.5' 'spark-development:2.4.5-gradle-6.5';
build_images './docker/pip3'  'spark-development:2.4.5-pip3'