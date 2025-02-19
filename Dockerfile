FROM --platform=linux/amd64 debian:12.9

RUN sed -i "s/Types: deb/Types: deb deb-src/g" /etc/apt/sources.list.d/debian.sources
RUN sed -i 's/ main$/ main contrib non-free/' /etc/apt/sources.list.d/debian.sources

RUN adduser --system --uid 1001 --shell /bin/bash digabi

RUN apt-get update
RUN apt-get -y install sudo build-essential fakeroot libssl-dev bc libelf-dev binwalk bison flex devscripts cpio wget kmod rsync python3-pip ruby ruby-dev
RUN gem install fpm
RUN pip3 install awscli --break-system-packages
