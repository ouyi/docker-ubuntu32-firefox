FROM ouyi/ubuntu-precise-core-i386
MAINTAINER Yi Ou <https://github.com/ouyi>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade
RUN apt-get -y install iputils-ping firefox openjdk-7-jre icedtea-7-plugin libpango1.0-0 libxft2 libxmu6 libxv1 fonts-takao

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/usr/bin/firefox"]
