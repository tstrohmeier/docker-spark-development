# Initial setup

## project folder
Set the path to your project folder:

```
    volumes:
      # ./src is the folder of your maven project
      - .:/home/spark
```

In this case we placed the docker-compose file in the project root folder (`.`) 
Change `.` if you use a different location.


# Development with docker

## Start the container

``` bash
# Interactive mode
docker-compose up 

# Deamon mode
docker-compose up -d 
```

## Stop the container

``` bash
docker-compose down
```


## Building and running this example

``` bash
# 1. Start Container
docker-compose up -d 
# 2. Build bundle
docker-compose exec spark sbt package
# 3. Submit bundle
docker-compose exec spark spark-submit --class "com.tstrohmeier.docker.examples.spark.sbt.SparkSbtExample" --master local[4] target/scala-2.12/spark-sbt-example_2.12-1.0.jar

```


## Open a /bin/bash terminal

``` bash
docker-compose exec spark /bin/bash
```

## Execute CMD in container

``` bash
docker-compose exec spark <cmd>
```


