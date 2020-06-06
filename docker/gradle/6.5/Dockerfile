FROM tstrohmeier/spark-development:2.4.5

MAINTAINER Thomas Strohmeier


ENV GRADLE_VERSION 6.5
ENV GRADLE_HOME /usr/local/gradle
ARG GRADLE_DOWNLOAD_SHA256=23e7d37e9bb4f8dabb8a3ea7fdee9dd0428b9b1a71d298aefd65b11dccea220f

ENV PATH=$PATH:$GRADLE_HOME

RUN echo "=== Downloading Gradle ===" \
    && wget --no-verbose --output-document=gradle-install.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" \
    && echo "=== Checking download hash ===" \
    && echo "${GRADLE_DOWNLOAD_SHA256} *gradle-install.zip" | sha256sum --check - \
    && echo "=== Installing Gradle ===" \
    && unzip gradle-install.zip \
    && rm gradle-install.zip \
    && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" \
    && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle \
    && echo "=== Testing Gradle installation ==="


#Run basic smoke tests
RUN echo "=== Testing Gradle installation ==="; \
    javac -version; \
    java -version; \
    gradle -version



WORKDIR /home/spark