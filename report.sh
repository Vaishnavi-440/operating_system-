#!/bin/bash

dir_count=0
file_count=0
link_count=0
total_size=0

echo "REPORT"

for item in *
do
    if [ -d "$item" ]
    then
        echo "DIR  $item/"
        dir_count=$((dir_count + 1))

    elif [ -L "$item" ]
    then
        echo "LINK $item@"
        link_count=$((link_count + 1))

    elif [ -f "$item" ]
    then
        echo "FILE $item"

        size=$(wc -c < "$item")
        total_size=$((total_size + size))

        file_count=$((file_count + 1))
    fi
done

echo
echo "Total Directories = $dir_count"
echo "Total Symbolic Links = $link_count"
echo "Total Regular Files = $file_count"
echo "Total Size of Regular Files = $total_size bytes"