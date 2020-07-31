FROM debian:10.4

RUN echo 'deb http://192.168.3.32/debian buster main contrib non-free' > /etc/apt/sources.list.d/nonfree.list && \
    echo 'deb http://192.168.3.32/debian buster-updates main contrib non-free' > /etc/apt/sources.list.d/updates-nonfree.list && \
    apt-get update && \
    apt-get -y install build-essential fakeroot libssl-dev bc libelf-dev binwalk bison flex devscripts cpio wget kmod rsync
