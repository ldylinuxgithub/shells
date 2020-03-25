#!/bin/bash 

# 修改Linux系统的最大打开文件数量

#Author:丁丁历险(Jacob) 
#往/etc/security/limits.conf文件的末尾追加两行配置参数，修改最大打开文件数量为65536 
cat >> /etc/security/limits.conf <<EOF 
* soft nofile  65536 
* hard nofile  65536 
EOF 
