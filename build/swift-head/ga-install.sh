#!/bin/bash

set -ex

apt-get update
apt-get install -y software-properties-common apt-transport-https ca-certificates
add-apt-repository -y "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-11 main"    
apt-get update
apt-get install -y \
  autoconf \
  clang-11 \
  cmake \
  git \
  icu-devtools \
  libblocksruntime-dev \
  libbsd-dev \
  libcurl4-openssl-dev \
  libedit-dev \
  libicu-dev \
  libkqueue-dev \
  libncurses5-dev \
  libpython-dev \
  libsqlite3-dev \
  libtool \
  libxml2-dev \
  ninja-build \
  pkg-config \
  python3 \
  python3-pip \
  swig \
  systemtap-sdt-dev \
  uuid-dev

update-alternatives --install /usr/bin/clang   clang   /usr/bin/clang-11   100
update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-11 100
update-alternatives --install /usr/bin/python python /usr/bin/python3 100 \
  --slave /usr/bin/pip pip /usr/bin/pip3
pip install six

./install.sh

find /opt/wandbox/swift-head/
