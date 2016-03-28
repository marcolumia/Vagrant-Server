#!/usr/bin/env bash

cd /usr/local/src
wget http://curl.haxx.se/download/curl-7.36.0.tar.gz
tar -xvzf curl-7.36.0.tar.gz
rm *.gz
cd curl-7.36.0
apt-get install -y build-essential
./configure
make
make install
apt-get install -y php5-curl
