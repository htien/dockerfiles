#!/usr/bin/env bash
#
# @filename: remove-image.sh
#

set -e

docker rmi -f tien/debian-bind

echo -e "\n"
docker images
