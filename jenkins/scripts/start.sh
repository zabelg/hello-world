#!/bin/bash
java -jar ../../demo/target/demo-0.0.1-SNAPSHOT.jar & echo $! > ./pid.file &
