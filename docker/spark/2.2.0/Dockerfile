FROM openjdk:8-jdk

MAINTAINER Thomas Strohmeier


ENV SPARK_VERSION 2.2.0
ENV HADOOP_VERSION 2.7
ENV SBT_VERSION 1.1.2

ENV PATH=$PATH:/usr/local/sbt/bin:/usr/local/spark/bin

# Installing Spark, Hadoop, sbt
RUN apt-get update \
    && apt-get install -y build-essential nano \
    && apt-get clean \
    && curl -sL "https://archive.apache.org/dist/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz" | tar -xz -C /usr/local/ \
    && ln -s "/usr/local/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION" /usr/local/spark \
    && curl -sL "https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.tgz" | tar -xz -C /usr/local \
    && mkdir /home/spark \
    && mkdir /home/spark/project \
    && echo "sbt.version=$SBT_VERSION \n" >> /home/spark/project/build.properties \
    && sbt test


#Run basic smoke tests
RUN javac -version; \
    java -version; \
    sbt -version


WORKDIR /home/spark

CMD ["/bin/bash"]
