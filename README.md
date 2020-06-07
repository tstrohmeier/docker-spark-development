# docker-spark-development
Dockerfiles for the tstrohmeier/spark-development images and example setup

@Dockerhub: https://hub.docker.com/r/tstrohmeier/spark-development/

**Base Images**

* tstrohmeier/spark-development:2.2.0
* tstrohmeier/spark-development:2.4.5

**Derived Images:**
* tstrohmeier/spark-development:2.4.5-gradle-6.5


## Folder Structure

    .
    ├── ...
    ├── docker                         # contains all the Dockerfiles
    │   ├── gradle                     # the extended spark-development-gradle image
    │   |   └── ...             
    │   ├── spark                      # the spark-development base image        
    │   |   └── ...               
    |   └── ...
    ├── docker-compose-templates       # docker-compose template files for new projects
    │   ├── gradle                     # Gradle template
    │   |   └── ...             
    │   ├── sbt                        # SBT template          
    │   |   └── ...               
    |   └── ...
    ├── examples                       # Example Projects
    │   ├── gradle                     # Gradle example project
    │   |   └── ...     
    │   ├── sbt                        # Sbt example project
    │   |   └── ...          
    |   └── ...
    ├── scripts                        # CI / CD build scripts
    └── ...



## What is installed in the base image?
* spark
* hadoop 
* sbt


## Docker Compose Templates

Just copy the right docker-compose template file into your project root folder and configure `src` location and the location of the cache location of your dependency management tool.


## Examples

In the examples folder you can find examples for different programming languages and dependency management tools.
Just copy the folder and modify for your needs



## Pull image

``` bash
# version 2.4.5
docker pull tstrohmeier/spark-development:2.4.5
```


## Contributing
Any improvement as Pull Request is welcome!