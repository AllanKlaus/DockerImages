FROM ubuntu:16.04

ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN sed -i -e 's/us.archive.ubuntu.com/archive.ubuntu.com/g' /etc/apt/sources.list
RUN apt-get update && \
  apt-get install -y \
  build-essential wget vim curl gnupg

#  INSTALL RVM
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
curl -sSL https://get.rvm.io | bash -s stable

# BUILD AND RUN
# docker build -t "ubuntu:rvm" -f ./ruby/rvm/Dockerfile .
# docker run -t -d ubuntu:rvm
