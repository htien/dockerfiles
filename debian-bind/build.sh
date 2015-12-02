#!/usr/bin/env bash
#
# @filename: build.sh
#

set -e

docker build -t tien/debian-bind .

echo -e "\n"
docker images
