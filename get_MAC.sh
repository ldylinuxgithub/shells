#!/bin/bash 

#获取本机MAC地址 

#Author:丁丁历险(Jacob) 
ip a s |awk 'BEGIN{print "本机 MAC 地址信息如下:"}/^[0-9]/{print $2;getline;if($0~/link\/ether/){print $2}}' |grep -v lo: 
 
#awk读取ip命令的输出，输出结果中如果有以数字开始的行，先显示该行的地 2列(网卡名称), 
#接着使用getline再读取它的下一行数据，判断是否包含link/ether 
#如果保护该关键词，就显示该行的第2列（MAC地址） 
#lo回环设备没有MAC，因此将其屏蔽，不显示
