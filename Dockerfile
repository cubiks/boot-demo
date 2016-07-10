FROM java:7-alpine

MAINTAINER daniel.harlea@wolterskluwer.com

ENV JAVA_HOME = /usr/lib/jvm/default-jvm

APP_NAME = boot-demo
APP_VER = 1.0.0-SNAPSHOT
APP_PKG = jar

RUN apk update && apk add bash binutils tar curl wget vim; \
    mkdir -p /opt;

COPY target/${APP_NAME}-${APP_VER}.${APP_PKG} /opt/

CMD java -jar /opt/${APP_NAME}-${APP_VER}.${APP_PKG}
