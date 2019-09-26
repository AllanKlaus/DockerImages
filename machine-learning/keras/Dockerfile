FROM ubuntu:18.04

RUN apt-get update && \
  apt-get install -y \
    build-essential \
    wget \
    vim \
    curl \
    gnupg \
    git \
    libreadline-dev \
    libsqlite3-dev \
    libbz2-dev \
    zlib1g-dev \
    libssl-dev && \
  rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH /usr/local/ssl/lib


# INSTALL PYTHON 2.7
RUN wget https://www.python.org/ftp/python/2.7.3/Python-2.7.3.tar.xz
RUN tar -Jxf Python-2.7.3.tar.xz

RUN cd Python-2.7.3 && ./configure && make -j && make install

# INSTALL GET-PIP
RUN apt-get update && \
  apt-get install -y \
    python-pip && \
  rm -rf /var/lib/apt/lists/*
# RUN wget https://bootstrap.pypa.io/get-pip.py
# RUN python2.7 get-pip.py --user

# INSTALL ANACONDA
# RUN wget https://repo.anaconda.com/archive/Anaconda2-5.2.0-Linux-x86.sh
RUN wget https://repo.anaconda.com/archive/Anaconda2-5.2.0-Linux-x86_64.sh
# RUN sh Anaconda-latest-Linux-x86_64.sh
# RUN conda update conda

# INSTALL JUPYTER
RUN pip install jupyter

# INSTALL KERAS
RUN pip install --upgrade keras \
      https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.9.0rc0-cp27-none-linux_x86_64.whl --user

RUN pip install tensorflow --upgrade
RUN pip install -U scikit-learn

ENV APP_HOME /keras
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

EXPOSE 8888
CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=

# docker build -t "ubuntu:keras2" -f ./machine-learning/keras2/Dockerfile .
# docker run -td -p 8888:8888 ubuntu:keras2