FROM byxorna/rubybase
MAINTAINER Gabe Conradi <gummybearx@gmail.com>

ENV RUBY_VERSION 2.1

# set up path so we can use rvm
ENV PATH /usr/local/rvm/rubies/default/bin:/usr/local/rvm/bin:$PATH
ADD ./provision.sh /provision.sh
RUN /provision.sh
# your ruby should be available by just running ruby

