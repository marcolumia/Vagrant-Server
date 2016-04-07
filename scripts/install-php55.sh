#!/usr/bin/env bash

echo "deb http://packages.dotdeb.org wheezy-php55 all" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://packages.dotdeb.org wheezy-php55 all" | sudo tee -a /etc/apt/sources.list
wget http://www.dotdeb.org/dotdeb.gpg
sudo apt-key add dotdeb.gpg
sudo apt-get update

apt-get install -y php5 php-pear php5-mysql php5-mcrypt php5-gd libapache2-mod-php5
/usr/sbin/a2enmod php5
