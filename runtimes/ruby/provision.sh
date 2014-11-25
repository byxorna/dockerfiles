#!/bin/bash
set -e
# install RVM requirements for centos
yum install -y curl tar libyaml-devel patch libffi-devel glibc-headers autoconf \
      gcc-c++ glibc-devel patch readline-devel zlib-devel openssl-devel make bzip2 \
      automake libtool bison
yum -y upgrade
yum -y clean all

gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -L https://get.rvm.io | bash -s stable

