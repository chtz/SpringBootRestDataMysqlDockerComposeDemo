#!/bin/bash
(cd ../../.. && mvn clean install -DskipTests)
cp ../../../target/restdatademo-0.0.1-SNAPSHOT.jar .
docker build -t chtz/restdatademo .
