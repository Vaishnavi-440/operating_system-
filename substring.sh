#!/bin/bash

string=$1
substring=$2

count=0

temp=$string

while [[ "$temp" == *"$substring"* ]]
do
    temp=${temp#*"$substring"}
    count=$((count + 1))
done

echo "Main String: $string"
echo "Substring: $substring"
echo "Occurrences = $count"


#./substring.sh banana na ---->run this command