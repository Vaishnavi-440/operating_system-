#!/bin/bash

echo "Enter a number:"
read num

temp=$num
reverse=0
flag=1

# Prime Check
if [ $num -le 1 ]
then
    flag=0
else
    for (( i=2; i<num; i++ ))
    do
        if [ $((num % i)) -eq 0 ]
        then
            flag=0
            break
        fi
    done
fi

# Reverse Number
while [ $temp -gt 0 ]
do
    digit=$((temp % 10))
    reverse=$((reverse * 10 + digit))
    temp=$((temp / 10))
done

# Display Result
if [ $flag -eq 1 ]
then
    echo "$num is Prime Number"
else
    echo "$num is Not Prime Number"
fi

echo "Reverse Number = $reverse"