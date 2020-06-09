FROM tstrohmeier/spark-development:2.4.5

LABEL "author" "Thomas Strohmeier, Fabio Moretti"

ENV PYSPARK_PYTHON /usr/bin/python3.7
ENV PYSPARK_DRIVER_PYTHON /usr/bin/python3.7

#Install python3 & pip3
RUN echo "=== Installing pip3 ===" \
    && apt-get update \
    && apt-get install -y python3-pip \
    && apt-get clean \
    && cp /usr/local/spark/conf/spark-env.sh.template /usr/local/spark/conf/spark-env.sh \
    && echo export PYSPARK_PYTHON=/usr/bin/python3.7 >> /usr/local/spark/conf/spark-env.sh \
    && echo "=== installing pyspark ===" \
    && pip3 install pyspark



#Run basic smoke tests
RUN echo "=== Testing pip3 installation ==="; \
    javac -version; \
    java -version; \
    pip3 --version;


WORKDIR /home/spark
