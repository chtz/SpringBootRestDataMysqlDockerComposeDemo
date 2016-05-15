#!/bin/bash

SCRIPTS_DIR=$(dirname "$0")
(cd $SCRIPTS_DIR/../src/main/docker && docker-compose down)
