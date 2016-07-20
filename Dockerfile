FROM ubuntu:14.04.3
MAINTAINER Elton Stoneman <elton@sixeyed.com>

# setup .NET core - installs latest DNX and sets it to default
COPY build-open1.sh /usr/local/build-open1.sh
RUN /usr/local/build-open1.sh

CMD /bin/bash
