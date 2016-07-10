FROM java:7-alpine

MAINTAINER daniel.harlea@wolterskluwer.com

ENV JAVA_HOME=/usr/lib/jvm/default-jvm
ENV APP_NAME=boot-demo
ENV APP_VER=1.0.0-SNAPSHOT
ENV APP_PKG=jar

RUN apk update && apk add bash binutils tar curl wget vim; \
    mkdir -p /opt;

COPY target/${APP_NAME}-${APP_VER}.${APP_PKG} /opt/

CMD java -jar /opt/${APP_NAME}-${APP_VER}.${APP_PKG}

