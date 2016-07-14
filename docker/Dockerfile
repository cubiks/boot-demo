FROM java:8-alpine

MAINTAINER daniel.harlea@wolterskluwer.com

ENV JAVA_HOME = /usr/lib/jvm/default-jvm

#ENV APP_NAME = boot-demo
#ENV APP_VER = 1.0.0-SNAPSHOT
#ENV APP_PKG = jar
ARG APP_PATH
ENV APP_PATH ${APP_PATH}

RUN apk update && apk add bash binutils tar curl wget vim; \
    mkdir -p /opt;

COPY ${APP_PATH} /opt/

EXPOSE 8080

#CMD java -jar /opt/${APP_NAME}-${APP_VER}.${APP_PKG}
CMD java -jar /opt/${APP_PATH}
