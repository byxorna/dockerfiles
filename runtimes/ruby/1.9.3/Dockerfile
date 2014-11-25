FROM byxorna/rubybase
MAINTAINER Gabe Conradi <gummybearx@gmail.com>

ENV RUBY_VERSION 1.9.3

ENV PATH /usr/local/rvm/rubies/default/bin:/usr/local/rvm/bin:$PATH
ADD ./provision.sh /provision.sh
RUN /provision.sh
# your ruby should be available by just running ruby

