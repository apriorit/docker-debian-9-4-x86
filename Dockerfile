# This docker file contains build environment
FROM i386/debian:latest
MAINTAINER krytin <krytin.vitaly@apriorit.com>

ENV DEBIAN_FRONTEND noninteractive

#uncomment all src repositories
RUN sed -i -- 's/#deb-src/deb-src/g' /etc/apt/sources.list && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y libssl-dev:i386 libcrypto++-dev:i386 uuid-dev:i386 libsnappy-dev:i386 build-essential:i386 cmake:i386 \
libguestfs-dev:i386 libedit-dev:i386 libc6-dev-x32:i386 libelf-dev:i386 \
snapd git autoconf linux-headers-4.9.0-6-all-i386

RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/*

#*******************************************