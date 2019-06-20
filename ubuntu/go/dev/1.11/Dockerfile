FROM ubuntu:18.04

RUN apt-get update && \
  apt-get install -y \
  build-essential \
  curl \
  debhelper \
  devscripts \
  gcc \
  git \
  gnupg \
  libc6-dev \
  mysql-client \
  ruby-full \
  wget \
  vim

ENV GO_INSTALL_DIR="/usr/local/"

ENV GOPATH="/var/www/"
ENV GOBIN="/usr/local/go/bin"
ENV PATH=$PATH:$GOBIN
ENV PATH=$PATH:$GOPATH/bin
RUN mkdir -p $GOPATH/bin

ENV GOLANG_VERSION 1.11.1
RUN wget "https://dl.google.com/go/go${GOLANG_VERSION}.linux-amd64.tar.gz"
RUN tar zxvf "go${GOLANG_VERSION}.linux-amd64.tar.gz" -C $GO_INSTALL_DIR

# DEP
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

RUN go get -u github.com/onsi/ginkgo/ginkgo
RUN go get github.com/onsi/gomega/...

EXPOSE 8080

CMD ["/bin/bash"]

# BUILD AND RUN
# docker build -t "allanklaus:go" -f ./ubuntu/go/dev/1.11/Dockerfile .
# docker run -td -P allanklaus:go
