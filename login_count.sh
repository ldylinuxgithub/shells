#!/bin/bash 

#统计当前Linux系统中可以登录计算机的账户有多少个 

#方法1: 
grep   "bash$"  /etc/passwd  | wc -l 

#方法2: 
awk  -f:  '/bash$/{x++}end{print x}'  /etc/passwd 
