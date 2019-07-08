FROM ubuntu:latest
MAINTAINER Frank Villaro-Dixon <frank@villaro-dixon.eu>

RUN DEBIAN_FRONTEND=noninteractive \
	apt update && \
	apt -y install rsync && \
	rm -rf /var/lib/apt/lists/*

ADD mirror.sh /

CMD ["/mirror.sh"]
