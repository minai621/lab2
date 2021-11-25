foldername=$1
DIR="/home/ubunntu/oss/src"

if [ -d "$DIR" ]; then
	mkdir $foldername
else
	echo "exist folder"
	exit 1
fi

cd $1
a=0

while [ $a -lt 5 ]
do
   touch file$a.txt
   a=`expr $a + 1`
done

mkdir files
tar cvfP files/files.tar .
cd files
tar xvfP files.tar
rm -r files

