FROM ubuntu:16.04

RUN apt-get update && \
  apt-get install -y \
  build-essential wget vim

RUN apt-get update && \
  apt-get install -y \
   git default-jdk scala python

# DOWNLOAD SPARK - https://spark.apache.org/downloads.html
RUN wget http://ftp.unicamp.br/pub/apache/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz
RUN tar -xvzf spark-2.3.1-bin-hadoop2.7.tgz

RUN cd spark-2.3.1-bin-hadoop2.7/bin && ./spark-shell

# BUILD AND RUN
# docker build -t "ubuntu:spark" -f ./machine-learning/spark/Dockerfile .
# docker run -t -d ubuntu:spark
# docker run -td -p 8888:8888 ubuntu:jupyter start-notebook.sh --NotebookApp.token=''
