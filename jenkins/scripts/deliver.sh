#!/usr/bin/env bash

#curl -X POST localhost:8080/actuator/shutdown
#./jenkins/scripts/stop.sh
#./jenkins/scripts/start.sh

java -jar ./demo/target/demo-0.0.1-SNAPSHOT.jar &

