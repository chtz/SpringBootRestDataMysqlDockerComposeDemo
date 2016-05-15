#!/bin/bash

SCRIPTS_DIR=$(dirname "$0")
(cd $SCRIPTS_DIR/.. && mvn clean install)
(cd $SCRIPTS_DIR/../src/main/docker && docker-compose build)
(cd $SCRIPTS_DIR/../src/main/docker && docker-compose up)
