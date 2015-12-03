#!/usr/bin/env bash
#
# @filename: run-test.sh
#

set -e

docker run -itdP -v /data:/data tien/debian-bind

CONTAINER_ID=$(docker ps -lq)

echo -e "\n"
docker ps -f=Id=$CONTAINER_ID

docker exec -it $CONTAINER_ID /bin/bash

