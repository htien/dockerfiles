#!/bin/sh

set -e

docker run --name webserv_test -itdP --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /data:/data -v /www:/www -v /var/log/nginx:/var/log/nginx tien/docker-nginx-php

CONTAINER_ID=$(docker ps -lq)

echo -e "\n"
docker ps -f=Id=$CONTAINER_ID

docker exec -it $CONTAINER_ID /bin/bash

