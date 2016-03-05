#!/bin/bash

curl -i -X POST -H "Content-Type:application/json" -d '{ "metric":"foo","value":12.5}' http://localhost:8080/api/measurements
curl http://localhost:8080/api/measurements/search/findByMetric?metric=foo
