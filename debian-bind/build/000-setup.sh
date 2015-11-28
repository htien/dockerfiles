#!/bin/sh
#
# Docker Maintainers <docker-maint@echip.io>
#
# @filename: 000-setup.sh
#

set -e

##
## BIND INSTALLATION.
##

$HOME/.build~/install-bind.sh


##
## CLEANUP.
##

$HOME/.build~/sys-cleanup.sh

