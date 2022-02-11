# syntax=docker/dockerfile:1
FROM debian:bullseye
RUN apt update && apt upgrade -y
RUN apt install git subversion python3 build-essential gawk unzip zip libncurses5-dev zlib1g-dev libssl-dev wget time qemu-utils file python2 -y
RUN useradd -m -s /bin/bash builduser

USER builduser
WORKDIR /home/builduser

CMD /bin/bash
