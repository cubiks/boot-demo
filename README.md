spring-boot-demo
================

## Build

    mvn clean install -Dmaven.test.skip=true

## Run

    java -jar target\boot-demo-1.0.0-SNAPSHOT.jar

To build and run this app inside a Docker container use the following:

    docker build --force-rm --rm=true -t playground/boot-demo .
    docker run --rm -it -p 8080:8080 playground/boot-demo

Then you can test it by:

    curl http://localhost:8080/hello/name


