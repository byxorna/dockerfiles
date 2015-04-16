FROM debian
MAINTAINER Gabe Conradi <gummybearx@gmail.com>

ENV RUBY_MAJOR_MINOR_VERSION 1.9
ENV RUBY_VERSION 1.9.2
ENV RUBY_PATCH p330
# we need to update, and set up locales for gem
RUN apt-get update && \
    apt-get install -y locales-all locales && \
    apt-get upgrade -y --force-yes && \
    rm -rf /var/lib/apt/lists/*
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN mkdir /app

RUN mkdir -p /usr/src/ruby && \
  ls -la /usr/src/ruby && \
  apt-get update && apt-get install -y curl autoconf \
    build-essential imagemagick libbz2-dev libcurl4-openssl-dev \
    libevent-dev libffi-dev libglib2.0-dev libjpeg-dev libmagickcore-dev \
    libmagickwand-dev libmysqlclient-dev libncurses-dev libpq-dev libreadline-dev \
    libsqlite3-dev libssl-dev libxml2-dev libxslt-dev libyaml-dev zlib1g-dev && \
  rm -rf /var/lib/apt/lists/* && \
  curl -SL "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR_MINOR_VERSION/ruby-$RUBY_VERSION-$RUBY_PATCH.tar.gz" \
    | tar xz -C /usr/src/ruby --strip-components=1 && \
  cd /usr/src/ruby && \
  autoconf && \
  ./configure --disable-install-doc && \
  make -j"$(nproc)" && \
  apt-get purge -y --auto-remove curl autoconf \
    imagemagick libbz2-dev libcurl4-openssl-dev libevent-dev libffi-dev libglib2.0-dev libjpeg-dev \
    libmagickcore-dev libmagickwand-dev libmysqlclient-dev libncurses-dev libpq-dev libreadline-dev \
    libsqlite3-dev libssl-dev && \
  make install && \
  rm -r /usr/src/ruby

RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc"
ENV GEM_HOME /usr/local/bundle
ENV PATH $GEM_HOME/bin:$PATH
RUN gem install bundler
RUN bundle config --global path "$GEM_HOME"
RUN bundle config --global bin "$GEM_HOME/bin"
# don't create ".bundle" in all our apps
ENV BUNDLE_APP_CONFIG $GEM_HOME

WORKDIR /app
CMD ["irb"]
