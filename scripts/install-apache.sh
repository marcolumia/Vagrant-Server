#!/usr/bin/env bash

apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

echo "ServerName localhost" | sudo tee -a /etc/apache2/apache2.conf
