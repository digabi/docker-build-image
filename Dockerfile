FROM --platform=linux/amd64 debian:12.9

RUN sed -i 's/ main$/ main contrib non-free/' /etc/apt/sources.list.d/debian.sources && \
    sed -i 's/^deb \(.*\)/deb \1\ndeb-src \1/' /etc/apt/sources.list.d/debian.sources && \
    apt-get update && \
    apt-get -y install sudo build-essential fakeroot libssl-dev bc libelf-dev binwalk bison flex devscripts cpio wget kmod rsync python3-pip ruby ruby-dev && \
    gem install fpm && \
    pip3 install awscli
