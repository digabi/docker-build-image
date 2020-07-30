FROM debian:10.4

RUN apt-get update && apt-get -y install build-essential fakeroot libssl-dev bc libelf-dev binwalk bison flex devscripts cpio wget kmod
