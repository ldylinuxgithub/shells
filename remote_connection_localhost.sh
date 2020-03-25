#!/bin/bash 
#Author:丁丁历险(Jacob) 
#使用netstat -atn 可以查看本机所有连接的状态，-a查看所有，-t仅显示tcp连接的信息，-n数字格式显示 
# Local Address（第四列是本机的IP和端口信息） 
#Foreign Address（第五列是远程主机的IP和端口信息） 
#使用awk命令仅显示第5列数据，再显示第1列 IP地址的信息 
#sort可以按数字大小排序，最后使用uniq将多余重复的删除，并统计重复的次数 


netstat -atn  |  awk  '{print $5}'  | awk  '{print $1}' | sort -nr  |  uniq -c 







#查看有多少远程的IP在连接本机（不管是通过ssh还是web还是 ftp都统计）
