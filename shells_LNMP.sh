#!/bin/bash #使用yum安装部署LNMP，需要提前配置好yum源，否则该脚本会失败 #本脚本使用于centos7.2或RHEL7.2 yum -y install httpd
yum -y install mariadb mariadb-devel mariadb-server yum -y install php  php-mysql 
 
systemctl start httpd
systemctl start mariadb 
systemctl enable httpd 
systemctl enable mariadb
