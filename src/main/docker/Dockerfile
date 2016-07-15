FROM java:8-alpine

MAINTAINER daniel.harlea@gmail.com

ARG APP_PATH

ENV JAVA_HOME = /usr/lib/jvm/default-jvm
ENV APP_PATH ${APP_PATH}

RUN apk update && apk add bash binutils tar curl wget vim; \
    mkdir -p /opt;

COPY ${APP_PATH} /opt/

EXPOSE 8080

CMD java -jar /opt/${APP_PATH}
