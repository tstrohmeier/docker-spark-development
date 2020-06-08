FROM tstrohmeier/spark-development:2.4.5

MAINTAINER Thomas Strohmeier


#Install python3 & pip3
RUN echo "=== Installing pip3 ===" \
    && apt-get update \
           && apt-get install -y python3-pip \
           && apt-get clean


#Run basic smoke tests
RUN echo "=== Testing pip3 installation ==="; \
    javac -version; \
    java -version; \
    pip3 --version


WORKDIR /home/spark