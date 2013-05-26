#!/bin/sh

git pull
sudo puppet apply /etc/puppet/manifests/config.pp --verbose
