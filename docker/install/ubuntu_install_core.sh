#!/bin/bash

set -e
set -u
set -o pipefail

# install libraries for building c++ core on ubuntu
apt-get update && apt-get install -y --no-install-recommends \
        git make libgtest-dev cmake wget unzip libtinfo-dev libz-dev\
        libcurl4-openssl-dev libopenblas-dev g++ sudo

cd /usr/src/gtest && cmake CMakeLists.txt && make && cp *.a /usr/lib
