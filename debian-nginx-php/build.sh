#!/bin/sh

set -e

docker build -t tien/docker-nginx-php .

echo -e "\n"
docker images
