# Initial setup

## project folder
Set the path to your project folder:

```
    volumes:
      ## ./src is the folder of your gradle project
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
# 2. Execute Python file
docker-compose exec spark python3 test.py
```


## Open a /bin/bash terminal

``` bash
docker-compose exec spark /bin/bash
```

## Execute CMD in container

``` bash
docker-compose exec spark <cmd>
```


