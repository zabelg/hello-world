#!/bin/bash

echo '### Stopping Demo Application'
kill $(cat ./pid.file)
