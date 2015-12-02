#!/usr/bin/env bash
#
# Docker Maintainers <docker-maint@echip.io>
#
# @filename: install-nginx-php.sh
#

set -e

##
## NGINX INSTALLATION.
##

apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62
echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" > /etc/apt/sources.list.d/nginx.list
apt-get update
apt-get install -y ca-certificates nginx=${NGINX_VERSION}


##
## PHP5/FPM INSTALLATION.
##

apt-get install -y php5-fpm php5-mysqlnd php5-gd php5-mcrypt


##
## CONFIGURING NGINX.
##

# Remove default /etc/nginx configuration directory
# and use my own, require mapping host's data volume to container.
mv /etc/nginx /etc/nginx.origin && chmod -R u=rwX,go= /etc/nginx.origin/
ln -s /data/etc/nginx /etc/


##
## CONFIGURING PHP.
##

# Remove default /etc/php5 configuration directory
# and use my own, require mapping host's data volume to container.
mv /etc/php5 /etc/php5.origin && chmod -R u=rwX,go= /etc/php5.origin/
ln -s /data/etc/php5 /etc/


##
## ENABLING SERVICES.
##

systemctl enable nginx
systemctl enable php5-fpm
