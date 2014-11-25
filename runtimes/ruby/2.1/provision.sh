#!/bin/bash -ex

rvm install $RUBY_VERSION
bash -lc "rvm use $RUBY_VERSION --default"
gem install bundler --no-ri --no-rdoc

#clean up after ourselves
rm -rf /usr/local/rvm/src/*
# your ruby should be available by just running ruby

