# docker-spark-development

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

Dockerfiles for the tstrohmeier/spark-development images and example setup

@Dockerhub: https://hub.docker.com/r/tstrohmeier/spark-development/

**Base Images**

* tstrohmeier/spark-development:2.2.0
* tstrohmeier/spark-development:2.4.5

**Derived Images:**
* tstrohmeier/spark-development:2.4.5-gradle-6.5
* tstrohmeier/spark-development:2.4.5-pip3


## Folder Structure

    .
    ├── ...
    ├── docker                         # contains all the Dockerfiles
    │   ├── gradle                     # extends the spark-development image with gradle
    │   |   └── ...             
    │   ├── pip3                       # extends the spark-development image with python3 & pip3
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
    │   ├── pyspark                    # pyspark example project
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



## Contributors ✨

Thanks goes to these wonderful people:

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/tstrohmeier"><img src="https://avatars3.githubusercontent.com/u/13830953?v=4" width="100px;" alt=""/><br /><sub><b>Thomas</b></sub></a><br /><a href="https://github.com/tstrohmeier/docker-spark-development/commits?author=tstrohmeier" title="Code">💻</a> <a href="https://github.com/tstrohmeier/docker-spark-development/pulls?q=is%3Apr+reviewed-by%3Atstrohmeier" title="Reviewed Pull Requests">👀</a></td>
    <td align="center"><a href="https://github.com/Fibs7000"><img src="https://avatars2.githubusercontent.com/u/16261713?v=4" width="100px;" alt=""/><br /><sub><b>Fibs7000</b></sub></a><br /><a href="https://github.com/tstrohmeier/docker-spark-development/commits?author=Fibs7000" title="Code">💻</a></td>    
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

