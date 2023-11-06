#!/bin/bash

echo "Enter directory name: "
read directory

if [ ! -d "$directory" ]; then 
echo "Error: Directory '$directory' does not exit"
exit 1

fi


file_count=$(find "$directory" -type f | wc -l)


echo "The number of file in the directory '$directory' is $file_count"
