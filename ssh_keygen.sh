#!/bin/bash 
#-t指定SSH密钥的算法为RSA算法；-N设置密钥的密码为空；-f指定生成的密钥文件存放在哪里 


#非交互自动生成SSH密钥文件


rm  -rf  ~/.ssh/{known_hosts,id_rsa*} 
ssh-keygen -t RSA -N '' -f ~/.ssh/id_rsa 
