#!/bin/bash 
#Author:丁丁历险(Jacob) 

#自动配置rsynd服务器的配置文件rsyncd.conf

# See rsyncd.conf man page for more options. 
 
[ ! -d /home/ftp ] && mkdir /home/ftp 
echo 'uid = nobody 
gid = nobody 
use chroot = yes 
max connections = 4 
pid file = /var/run/rsyncd.pid 
exclude = lost+found/ 
transfer logging = yes 
timeout = 900 
ignore nonreadable = yes 
dont compress   = *.gz *.tgz *.zip *.z *.Z *.rpm *.deb *.bz2 
[ftp]
        path = /home/ftp
        comment = share' > /etc/rsyncd.conf 
