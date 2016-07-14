spring-boot-demo
================

## Build

Build the image using docker-maven-plugin.

    mvn clean package docker:build

or build without maven:

    docker build --force-rm --rm=true -t playground/boot-demo --build-arg APP_PATH=boot-demo-1.0.0-SNAPSHOT.jar .

## Run

To run the app locally:

    java -jar target\boot-demo-1.0.0-SNAPSHOT.jar

To the app inside a Docker container use the following:

    docker run --rm -it -p 8080:8080 playground/boot-demo

## Test

Then you can test it by:

    curl http://localhost:8080/hello/name
