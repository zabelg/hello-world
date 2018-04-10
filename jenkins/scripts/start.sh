#!/bin/bash


rm pid.file

echo '### Starting Demo Application'
set -x
java -jar ./demo/target/demo-0.0.1-SNAPSHOT.jar & echo $! > ./pid.file &
set +x
