#!/bin/bash #执行脚本时，需要给脚本添加位置参数 
#脚本名  txt   doc（可以将txt的扩展名修改为 doc） 
#脚本名  doc  jpg（可以将 doc 的扩展名修改为jpg） 
 
for  i   in   "ls *.$1" 
do         
	mv  $i    ${i%.*}.$2 
done
