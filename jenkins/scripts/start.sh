#!/bin/bash


rm pid.file

echo *** Starting Demo Application
java -jar ./demo/target/demo-0.0.1-SNAPSHOT.jar & echo $! > ./pid.file &
