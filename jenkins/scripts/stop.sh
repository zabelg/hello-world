#!/bin/bash

echo '### Stopping Demo Application'
set -x
kill $(cat ./pid.file)
