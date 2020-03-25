#!/bin/bash 

#显示当前计算机中所有账户的用户名称

#下面使用3中不同的方式列出计算机中所有账户的用户名 
#指定以:为分隔符，打印/etc/passwd文件的第1列 
awk -F: '{print $1}' /etc/passwd 
 
#指定以:为分隔符，打印/etc/passwd文件的第1列 
cut -d: -f1 /etc/passwd 
 
#使用sed的替换功能，将/etc/passwd文件中:后面的所有内容替换为空（仅显示用户名） 
sed 's/:.*//' /etc/passwd
