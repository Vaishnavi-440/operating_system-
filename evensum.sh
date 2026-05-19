#!/bin/bash

# Function Definition

sum_even()
{
    n=$1
    sum=0
    even=2

    for (( i=1; i<=n; i++ ))
    do
        sum=$((sum + even))
        even=$((even + 2))
    done

    echo "Sum of first $n even numbers = $sum"
}

# Command Line Argument Check

if [ $# -eq 0 ]
then
    echo "Please enter limit using command line argument"
    exit
fi

# Function Call

sum_even $1