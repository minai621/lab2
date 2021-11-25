#!/bin/sh
number=$@
for var in $(seq 1 $number)
do
	echo "Hello World"
done
exit 0
