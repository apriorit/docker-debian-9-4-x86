# This docker file contains build environment
FROM i386/debian:latest
MAINTAINER Victor Yastrub <yastrub.victor@apriorit.com>

ENV DEBIAN_FRONTEND noninteractive

#uncomment all src repositories
RUN sed -i -- 's/#deb-src/deb-src/g' /etc/apt/sources.list && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y linux-headers-4.9.0-6-all-i386 linux-image-4.9.0-6-686

RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/*

#*******************************************