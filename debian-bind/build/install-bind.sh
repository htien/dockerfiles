#!/usr/bin/env bash
#
# Docker Maintainers <docker-maint@echip.io>
#
# @filename: install-bind.sh
#

set -e

##
## BIND INSTALLATION.
##

apt-get install -y bind9 dnsutils


##
## CONFIGURING BIND.
##

# Remove default /etc/bind configuration directory.
mv /etc/bind /etc/bind.origin
ln -s /data/etc/bind /etc/

systemctl enable bind9

