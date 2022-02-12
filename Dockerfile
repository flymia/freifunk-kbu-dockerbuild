# syntax=docker/dockerfile:1
FROM debian:bullseye
RUN apt update && apt upgrade -y
RUN apt install git subversion python3 build-essential gawk unzip zip libncurses5-dev zlib1g-dev libssl-dev wget time qemu-utils file python2 -y
RUN useradd -m -s /bin/bash builduser
RUN mkdir /build
RUN chown -R builduser:builduser /build

USER builduser
WORKDIR /build

CMD /bin/bash
