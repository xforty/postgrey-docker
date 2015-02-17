FROM phusion/baseimage

MAINTAINER xforty technologies

RUN sudo apt-get -qq update && \
  sudo apt-get -qqy upgrade && \
  sudo apt-get -qqy install man postgrey

RUN mkdir -p /etc/service/postgrey
COPY ./run /etc/service/postgrey/
RUN chmod a+x /etc/service/postgrey/run

WORKDIR /


