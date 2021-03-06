FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install ca-certificates -y && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
      curl \
      gnupg \
      wget && \
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
      libxslt1.1 \
      libyaml-dev \
      libxslt-dev \
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

# INSTALL RUBY
RUN wget https://cache.ruby-lang.org/pub/ruby/2.5/ruby-2.5.1.tar.gz
RUN tar xzf ruby-2.5.1.tar.gz

RUN cd ruby-2.5.1 && ./configure && make && make install

RUN gem install bundle --no-ri --no-rdoc
RUN gem install pkg-config
RUN gem install nokogiri --pre


# docker build -t "allanklaus:ruby" -f ./ubuntu/ruby/dev/2.5/Dockerfile .
# docker run -td allanklaus:ruby