#!/bin/bash 
#Author:丁丁历险(Jacob) 
#该脚本使用guestmount工具，Centos7.2中安装libguestfs-tools-c 可以获得guestmount工具 


# 破解虚拟机密码，无密码登陆虚拟机系统 
 
read -p "请输入虚拟机名称:" name 
if virsh domstate $name |grep -q running ;then
  echo "破解,需要关闭虚拟机"
  virsh destroy $name
fi 
mountpoint="/media/virtimage" 
[ ! -d $mountpoint ]&& mkdir $mountpoint 
echo "请稍后..." 
if mount | grep -q "$mountpoint" ;then
  umount $mountpoint fi guestmount  -d $name -i $mountpoint 
#将passwd中密码占位符号x删除，该账户即可实现无密码登陆系统 
sed -i "/^root/s/x//" $mountpoint/etc/passwd
