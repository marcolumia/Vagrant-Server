#!/usr/bin/env bash

echo "deb http://packages.dotdeb.org wheezy all" > /etc/apt/sources.list.d/dotdeb.list
echo "deb-src http://packages.dotdeb.org wheezy all" >> /etc/apt/sources.list.d/dotdeb.list
cd /tmp
wget http://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg
apt-get update
apt-get install -y redis-server
