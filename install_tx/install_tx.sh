#!/bin/sh 
#
#
#GPG key
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
#
#
#repository
sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://ftp.utexas.edu/mariadb/repo/10.3/ubuntu bionic main'
sudo apt update
#
#
sudo apt install mariadb-server
#
#
sudo systemctl status mariadb
#
#
mysql -V
