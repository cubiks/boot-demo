spring-boot-demo
================

## Build

Build the image using docker-maven-plugin.

    mvn clean package docker:build

## Run

    docker run --rm -it -p 8080:8080 playground/boot-demo
