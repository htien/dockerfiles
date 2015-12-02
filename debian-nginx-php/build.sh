#!/usr/bin/env bash
#
# @filename: build.sh
#

set -e

docker build -t tien/debian-nginx-php .

echo -e "\n"
docker images
