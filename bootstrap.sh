#!/usr/bin/env bash

apt-get install -y screen

apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

