#!/bin/sh

sudo git pull
sudo puppet apply /etc/puppet/manifests/config.pp --verbose
