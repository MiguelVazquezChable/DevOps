#!/bin/bash
yum update -y
sudo tee /etc/yum.repos.d/MariaDB.repo<<EOF 
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.3/centos7-amd64
gpkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
EOF
sudo yum -y install MariaDB-server MariaDB-client