
#! /bin/bash
height=`expr "scale=2; $2 / 100" | bc`
hP=`expr "scale=2; $height * $height" | bc`
BMI=`expr "scale=2; $1 / $hP" | bc`
if [ 1 -eq "$((echo "$BMI < 18.5") | bc)" ]
    then
       echo "저체중입니다."
  elif [ 1 -eq "$((echo "$BMI > 18.5") | bc)" ] && [ 1 -eq "$((echo "$BMI < 24.5") | bc)" ]
    then
       echo "정상체중입니다."
     elif [ 1 -eq "$((echo "$BMI > 25") | bc)" ] && [ 1 -eq "$((echo "$BMI < 29.9") | bc)" ]
    then
         echo "과체중입니다."
    else
         echo "과체중입니다."
    fi
