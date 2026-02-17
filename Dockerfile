FROM --platform=linux/amd64 debian:12.9

RUN sed -i "s/Types: deb/Types: deb deb-src/g" /etc/apt/sources.list.d/debian.sources
RUN sed -i 's/ main$/ main contrib non-free/' /etc/apt/sources.list.d/debian.sources

RUN mkdir -p /home/digabi
RUN adduser --system --uid 1001 --home /home/digabi --shell /bin/bash digabi
RUN chown digabi /home/digabi

RUN apt-get update
RUN apt-get -y install sudo build-essential fakeroot libssl-dev bc libelf-dev binwalk bison flex devscripts cpio wget kmod rsync python3-pip ruby ruby-dev curl golang libsystemd-dev

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | sudo -u digabi bash && \
    sudo -u digabi bash -c 'cd ; . ~/.nvm/nvm.sh; for v in 22.12.0 24.13.1; do nvm install $v; done'

RUN gem install fpm
RUN pip3 install awscli --break-system-packages

RUN ln -sf /home/digabi/.nvm/versions/node/v24.13.1/bin/node /usr/bin/nodejs
RUN ln -sf /home/digabi/.nvm/versions/node/v24.13.1/bin/node /usr/bin/node
RUN ln -sf /home/digabi/.nvm/versions/node/v24.13.1/bin/npm /usr/bin/npm