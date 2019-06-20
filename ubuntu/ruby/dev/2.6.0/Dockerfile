FROM ubuntu:18.04

RUN apt-get update && \
  apt-get install -y \
    build-essential \
    wget \
    vim \
    curl \
    gnupg && \
  rm -rf /var/lib/apt/lists/*

RUN wget https://cache.ruby-lang.org/pub/ruby/2.6/ruby-2.6.0.tar.gz
RUN tar xzf ruby-2.6.0.tar.gz

RUN cd ruby-2.6.0 && ./configure && make && make install

# BUILD AND RUN
# docker build -t "allanklaus/ruby2.6.0" -f ./ubuntu/ruby/dev/2.6.0/Dockerfile .
# docker run -td allanklaus/ruby2.6.0
