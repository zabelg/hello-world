#!/bin/bash

echo '### Starting Demo Application'
pwd
java -jar demo/target/demo-0.0.1-SNAPSHOT.jar > ./log.txt 2>&1 &
echo $! > ./pid.file
