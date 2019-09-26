FROM ubuntu:18.04


# INSTALL CRYSTAL LANG
RUN apt-get update && \
  apt-get install -y \
	  build-essential \
	  curl \
	  gcc \
	  gnupg \
	  libc6-dev \
# Crystal Dependencies
	  libbsd-dev \
	  libedit-dev \
	  libevent-core-2.1-6 \
	  libevent-dev \
	  libevent-extra-2.1-6 \
	  libevent-openssl-2.1-6 \
	  libevent-pthreads-2.1-6 \
	  libgmp-dev \
	  libgmpxx4ldbl \
	  libssl-dev \
	  libxml2-dev \
	  libyaml-dev \
	  libreadline-dev \
	  automake \
	  libtool \
	  git \
	  llvm \
	  llvm-dev \
	  libpcre3-dev \
#  Amber Dependencies
		libsqlite3-dev \
		libpq-dev \
	  libmysqlclient-dev && \
	rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://dist.crystal-lang.org/apt/setup.sh | bash

RUN curl -sL "https://keybase.io/crystal/pgp_keys.asc" | apt-key add -
RUN echo "deb https://dist.crystal-lang.org/apt crystal main" | tee /etc/apt/sources.list.d/crystal.list

RUN apt-get update && \
  apt-get install -y \
  	crystal && \
	rm -rf /var/lib/apt/lists/*


# INSTALL AMBER FRAMEWORK
RUN curl -L https://github.com/amberframework/amber/archive/stable.tar.gz | tar xz
RUN cd amber-stable/ && shards install && make install

# BUILD AND RUN
# docker build -t "allanklaus:crystal" -f ./ubuntu/crystal/Dockerfile .
# docker run -td -P allanklaus:crystal