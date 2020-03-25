#!/bin/bash 

#显示CPU厂商信息 

awk '/vendor_id/{print $3}' /proc/cpuinfo |uniq 
