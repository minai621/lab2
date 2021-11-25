#!/bin/sh
foldername=$1
mkdir $foldername
cd $foldername
a=0
while [ $a -lt 5 ]
do
	newfolder=file$a
	mkdir $newfolder
	touch file$a.txt
	cd file$a
	ln -s file$a.txt 
	cd ..
	 a=`expr $a + 1`
done
