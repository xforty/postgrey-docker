FROM phusion/baseimage

MAINTAINER xforty technologies

RUN sudo apt-get -qq update && \
  sudo apt-get -qqy upgrade && \
  sudo apt-get -qqy install man postgrey

WORKDIR /

CMD /usr/sbin/postgrey --inet=10023
