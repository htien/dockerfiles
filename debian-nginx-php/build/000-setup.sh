#!/usr/bin/env bash
#
# Docker Maintainers <docker-maint@echip.io>
#
# @filename: 000-setup.sh
#

set -e

##
## NGINX + PHP INSTALLATION.
##

$HOME/.build~/install-nginx-php.sh


##
## CLEANUP.
##

$HOME/.build~/sys-cleanup.sh

