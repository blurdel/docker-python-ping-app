#!/bin/bash

# export USER=Tom
# export HOST="172.17.0.2"

docker run -it --rm -e USER='Tom' -e HOST='172.17.0.2'  ping-app:1.0.0
