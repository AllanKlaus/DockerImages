FROM crystallang/crystal:0.33.0

# Install Dependencies
RUN apt-get update -qq && \
	apt-get install -y --no-install-recommends \
		apt-transport-https \
		autoconf \
		autotools-dev \
		build-essential \
		bzip2 \
		cmake \
		curl \
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
		libsqlite3-dev \
		libssl-dev \
		libxml2-dev \
		libxslt-dev \
		libyaml-dev \
		locales \
		netcat \
		openssh-client \
		pkg-config \
		postgresql \
		postgresql-contrib \
		procps \
		vim \
		zlib1g-dev && \
	rm -rf /var/lib/apt/lists/*

# DOWNLOAD NODE BASE
RUN curl -sS https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN echo "deb https://deb.nodesource.com/node_8.x bionic main" > /etc/apt/sources.list.d/node.list

# DOWNLOAD YARN BASE
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && \
	apt-get install -y --no-install-recommends \
		nodejs \
		yarn && \
	rm -rf /var/lib/apt/lists/*

# RUN CRYSTAL
CMD ["crystal", "spec"]

# BUILD AND RUN
# docker build -t "allanklaus:crystal" -f ./ubuntu/crystal/dev/0.33/Dockerfile .
# docker run -td -P allanklaus:crystal