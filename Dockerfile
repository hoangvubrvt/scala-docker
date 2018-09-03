FROM bigtruedata/scala:2.11.12

ENV SBT_VERSION 0.13.17

RUN curl -L -o sbt-$SBT_VERSION.deb http://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
    dpkg -i sbt-$SBT_VERSION.deb && \
    rm sbt-$SBT_VERSION.deb && \
    apt-get update && \
    apt-get install sbt && \
    sbt sbtVersion

VOLUME /app
WORKDIR /app

CMD ["sbt run"]
