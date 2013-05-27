#!/bin/sh

sudo raspi-config
sudo dpkg-reconfigure tzdata
sudo apt-get update
sudo apt-get install puppet-common git
sudo mv /etc/puppet /etc/puppet.bak
sudo git clone https://github.com/fromagie/puppet.git /etc/puppet
sudo chown -R pi:pi /etc/puppet
