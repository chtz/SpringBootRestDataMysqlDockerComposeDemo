#!/bin/bash

(cd .. && mvn clean install)
(cd ../src/main/docker && docker-compose build)
(cd ../src/main/docker && docker-compose up)