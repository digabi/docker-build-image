FROM debian:10.4

RUN apt-get update && \
    apt-get -y install sudo build-essential fakeroot libssl-dev bc libelf-dev binwalk bison flex devscripts cpio wget kmod rsync python3-pip ruby ruby-dev && \
    gem install fpm && \
    pip3 install awscli
