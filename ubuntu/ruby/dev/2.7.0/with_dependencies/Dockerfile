FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get install -y \
    build-essential \
    ca-certificates \
    wget \
    vim \
    curl \
    gnupg \
    libssl-dev \
    libxslt-dev \
    zlib1g && \
  rm -rf /var/lib/apt/lists/*

# DOWNLOAD NODE BASE
RUN wget --quiet -O - https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN echo "deb https://deb.nodesource.com/node_8.x bionic main" > /etc/apt/sources.list.d/node.list

# DOWNLOAD YARN BASE
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
      apt-transport-https \
      autoconf \
      autotools-dev \
      build-essential \
      bzip2 \
      cmake \
      debhelper \
      devscripts \
      dh-make \
      equivs \
      fakeroot \
      git \
      git-buildpackage \
      libmysqlclient-dev \
      libffi-dev \
      libpq-dev \
      libqt4-dev \
      libqtwebkit4 \
      libssl-dev \
      libxml2-dev \
      libxslt-dev \
      libyaml-dev \
      locales \
      nodejs \
      openssh-client \
      pkg-config \
      postgresql \
      postgresql-contrib \
      procps \
      vim \
      yarn \
      zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/default/locale
RUN echo "export LANG=en_US.UTF-8" >> /etc/profile
RUN echo "export LANG=en_US.UTF-8" >> /etc/bash.bashrc

RUN /usr/sbin/locale-gen
ENV LANG en_US.UTF-8

RUN wget https://cache.ruby-lang.org/pub/ruby/2.7/ruby-2.7.0.tar.gz
RUN tar xzf ruby-2.7.0.tar.gz

RUN cd ruby-2.7.0 && ./configure && make && make install

# BUILD AND RUN
# docker build -t "allanklaus/ruby2.7.0" -f ./ubuntu/ruby/dev/2.7.0/with_dependencies/Dockerfile .
# docker run -td allanklaus/ruby2.7.0
