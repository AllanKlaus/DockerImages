FROM ubuntu:18.04

RUN apt-get update && \
  apt-get install -y \
  build-essential \
  curl \
  gcc \
  git \
  gnupg \
  libc6-dev \
  wget

ENV GO_INSTALL_DIR="/usr/local/"
ENV PATH=$PATH:$GO_INSTALL_DIR/go/bin

RUN wget https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz
RUN tar zxvf go1.11.1.linux-amd64.tar.gz -C $GO_INSTALL_DIR

# DEP
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

EXPOSE 8080

# BUILD AND RUN
# docker build -t "allanklaus:go" -f ./ubuntu/go/deploy/1.11/Dockerfile .
# docker run -td -P allanklaus:go
