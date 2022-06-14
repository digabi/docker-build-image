FROM debian:10.4

RUN sed -i 's/ main$/ main contrib non-free/' /etc/apt/sources.list && \
    sed -i 's/^deb \(.*\)/deb \1\ndeb-src \1/' /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y install sudo build-essential fakeroot libssl-dev bc libelf-dev binwalk bison flex devscripts cpio wget kmod rsync python3-pip ruby ruby-dev && \
    gem install fpm && \
    pip3 install awscli
