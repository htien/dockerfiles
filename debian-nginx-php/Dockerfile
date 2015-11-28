FROM maint/debian-systemd:latest

MAINTAINER NGINX-PHP Docker Maintainers <docker-maint@echip.io>

LABEL description="NGINX-PHP Dockerfile for everyone." vendor="HVA Team" version="1.0"

ENV \
	NGINX_VERSION=1.9.7-1~jessie \
	HOME=/root \

	# Let the container know that there is no tty
	DEBIAN_FRONTEND=noninteractive \

	container=docker

WORKDIR /root

COPY build/* ./.build~/

RUN \
	chmod u=rwx,go= $HOME/.build~/*.sh \
	&& $HOME/.build~/000-setup.sh \
	&& rm -rf $HOME/.build~

VOLUME ["/data", "/www", "/var/cache/nginx"]

EXPOSE 80 443

CMD ["/bin/bash"]

ONBUILD RUN apt-get update

