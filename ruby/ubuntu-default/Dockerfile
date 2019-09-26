FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install build-essential wget vim ruby-full -y

COPY ./painel-de-spam.deb ./spam.deb

# BUILD AND RUN
# docker build -t "ubuntu:rubydefault" -f ./ruby/ubuntu-default/Dockerfile .
# docker run -t -d ubuntu:rubydefault
