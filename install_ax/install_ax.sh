#!/bin/sh
#
#
#create mariadb-columnstore.list
echo deb https://downloads.mariadb.com/MariaDB/mariadb-columnstore/latest/repo/ubuntu18 bionic main > /etc/apt/sources.list.d/mariadb-columnstore.list
echo deb https://downloads.mariadb.com/MariaDB/mariadb-columnstore-api/latest/repo/ubuntu18 bionic main >> /etc/apt/sources.list.d/mariadb-columnstore.list
#
#
#create mariadb-columnstore-tools.list
echo deb https://downloads.mariadb.com/MariaDB/mariadb-columnstore-tools/latest/repo/ubuntu18 bionic main > /etc/apt/sources.list.d/mariadb-columnstore-tools.list
#
#
#create mariadb-maxscale.list
echo deb https://downloads.mariadb.com/MaxScale/latest/ubuntu bionic main > /etc/apt/sources.list.d/mariadb-maxscale.list
#
#
#create mariab-columnstore-data-adapters.list
echo deb https://downloads.mariadb.com/MariaDB/data-adapters/mariadb-streaming-data-adapters/latest/repo/ubuntu18 bionic main > /etc/apt/sources.list.d/mariadb-columnstore-data-adapters.list
#
#
#Download the MariaDB ColumnStore key
wget -qO - https://downloads.mariadb.com/MariaDB/mariadb-columnstore/MariaDB-ColumnStore.gpg.key | sudo apt-key add -
#
#
#Download the MariaDB MaxScale key
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 28C12247
#
#
#Install
sudo apt-get update
sudo apt-get install mariadb-columnstore*
#
#sudo apt-get install mariadb-columnstore-api
#sudo apt-get install mariadb-columnstore-tools
#sudo apt-get install maxscale maxscale-cdc-connector
#sudo apt-get install mariadb-columnstore-maxscale-cdc-adapters
#sudo apt-get install mariadb-columnstore-kafka-adapters
#
#
#postConfigure < 1 default 1 
sudo /usr/local/mariadb/columnstore/bin/postConfigure
#
#
#columnstoreAlias
sudo /usr/local/mariadb/columnstore/bin/columnstoreAlias
#
#
#check getSystemStatus
mcsadmin getSystemStatus
#
#
#run mcsmysql
mcsmysql
