#!/bin/sh

set -e

docker rmi -f tien/docker-nginx-php

echo -e "\n"
docker images
