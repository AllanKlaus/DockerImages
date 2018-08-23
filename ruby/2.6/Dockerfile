FROM ubuntu:16.04

RUN apt-get update && \
  apt-get install -y \
  build-essential wget vim curl gnupg

RUN wget https://cache.ruby-lang.org/pub/ruby/2.6/ruby-2.6.0-preview2.tar.gz
RUN tar xzf ruby-2.6.0-preview2.tar.gz

RUN cd ruby-2.6.0-preview2 && ./configure && make && make install

COPY ./tests.rb ./tests.rb

# BUILD AND RUN
# docker build -t "ubuntu:ruby26" -f ./ruby/2.6/Dockerfile .
# docker run -t -d ubuntu:ruby26
