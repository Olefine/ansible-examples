#!/usr/bin/env bash

apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

cp -a /vagrant/examples/* /home/vagrant/
chown -R vagrant:vagrant /home/vagrant

cat /vagrant/hosts >> /etc/hosts
