#!/usr/bin/env bash

echo "<VirtualHost *:80>
        DocumentRoot /home/vagrant/marcolumia.com/public
        ServerName local.smrt.net
</VirtualHost>" > /etc/apache2/sites-enabled/marcolumia.conf

# Add the host to the hosts file
echo 127.0.0.1 local.marcolumia.com >> /etc/hosts

# Reload Apache2
/etc/init.d/apache2 restart
