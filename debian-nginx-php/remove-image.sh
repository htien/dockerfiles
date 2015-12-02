#!/usr/bin/env bash
#
# @filename: remove-image.sh
#

set -e

docker rmi -f tien/debian-nginx-php

echo -e "\n"
docker images
