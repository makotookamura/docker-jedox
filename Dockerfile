FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y \
       bash \
   	   curl \
	     sudo \
       wget \
       iputils-ping \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# copy install shell
COPY jedox_install_start.sh /
RUN chmod 700 -R jedox_install_start.sh /opt /tmp

# expose ports
EXPOSE 80
EXPOSE 7777
EXPOSE 7775

# add entrypoint
ENTRYPOINT ./jedox_install_start.sh && /bin/bash 
