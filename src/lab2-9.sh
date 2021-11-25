#!/bin/sh

name=$1
phone=$2

if [ ! -f "DB.txt" ];then
	echo "file not exist"
else
	touch DB.txt
fi

echo $name $phone >> DB.txt

