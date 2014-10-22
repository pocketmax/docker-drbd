FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y drbd8-utils

ADD global_common.conf /etc/drbd.d/

EXEC drbdadm up all

