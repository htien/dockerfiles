FROM maint/debian-systemd:latest

MAINTAINER DNS Docker Maintainers <docker-maint@echip.io>

LABEL description="Bind DNS Dockerfile for everyone." vendor="HVA Team" version="1.0"

ENV \
	HOME=/root \

	# Let the container know that there is no tty.
	DEBIAN_FRONTEND=noninteractive \

	container=docker

WORKDIR /root

COPY build/* .build~/

RUN \
	chmod u=rwx,go= $HOME/.build~/*.sh \
	&& $HOME/.build~/000-setup.sh \
	&& rm -rf $HOME/.build~

VOLUME ["/data"]

EXPOSE 53/udp

CMD ["/bin/bash"]

ONBUILD RUN apt-get update

