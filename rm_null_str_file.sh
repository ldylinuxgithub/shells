#!/bin/bash 
#/var/www/html 为测试目录，脚本会清空该目录下所有0字节的文件 

# 删除某个目录下大小为0的文件

dir="/var/www/html" 
find $dir  -type f  -size  0  -exec  rm   -rf {} \; 
