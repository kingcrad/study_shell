#!/bin/bash
read -p "请输入想要测试的IP网段（仅限C类IP）：" ip
for ((i=1;i<=254;i++))
do
{ping -c 2 $ip.$i &> /dev/null
if [ $? -eq 0 ]
	echo $ip.$i >> /opt/access_ip.txt
fi
}&
done
wait
echo "请查看/opt/access_ip.txt文件"
