#!/bin/bash 
#awk判断ps 命令输出的第 8列为Z是，显示该进程的PID和进程命令 

#查找Linux系统中的僵尸进程 

ps aux |awk '{if($8 == "Z"){print $2,$11}}' 
