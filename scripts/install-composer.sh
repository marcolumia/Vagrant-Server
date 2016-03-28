#!/usr/bin/env bash

cd /usr/src
apt-get install -y curl php5-cli
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
