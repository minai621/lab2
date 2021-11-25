#!/bin/sh

myFunction(){
	echo "프로그램을 시작합니다."
	echo "함수 안으로 들어 왔음"
	echo `ls $1`
	echo "프로그램을 종료합니다."
}
if [ -z $@ ]; then
	myFunction
else
	str=$1
	command=${str##*-}
	echo $command
	myFunction $1
fi

