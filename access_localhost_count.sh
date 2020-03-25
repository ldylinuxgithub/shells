#!/bin/bash 
# 统计每个远程IP访问了本机apache几次？ 
awk  '{ip[$1]++}END{for(i in ip){print ip[i],i}}'  /var/log/httpd/access_lo
