#!/bin/bash
java -jar myapp.jar & echo $! > ./pid.file &
