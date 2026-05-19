#!/bin/bash

echo "1. Decimal to Binary"
echo "2. Binary to Decimal"

echo "Enter your choice:"
read choice

if [ $choice -eq 1 ]
then
    echo "Enter Decimal Number:"
    read num

    binary=""

    while [ $num -gt 0 ]
    do
        rem=$((num % 2))
        binary=$rem$binary
        num=$((num / 2))
    done

    echo "Binary Number = $binary"

elif [ $choice -eq 2 ]
then
    echo "Enter Binary Number:"
    read bin

    decimal=0
    power=1

    while [ $bin -gt 0 ]
    do
        digit=$((bin % 10))

        decimal=$((decimal + digit * power))

        power=$((power * 2))

        bin=$((bin / 10))
    done

    echo "Decimal Number = $decimal"

else
    echo "Invalid Choice"
fi