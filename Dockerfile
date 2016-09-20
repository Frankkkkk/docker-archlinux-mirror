FROM ubuntu:16.04
MAINTAINER Frank Villaro-Dixon <frank@villaro-dixon.eu>
RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install nginx rsync cron

COPY nginx.conf /etc/nginx/sites-available/default
COPY mirror_archlinux.sh /
COPY run.sh /

VOLUME /archlinux_mirror
EXPOSE 80 443
CMD ["/run.sh"]
