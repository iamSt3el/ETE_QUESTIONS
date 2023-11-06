#!/bin/bash

echo "Enter the file name: "
read fileName

if [ ! -f "$fileName" ]; then
echo "Error '$fileName' is not found"
exit 1
fi


#count the file line, words and characters
line_count=$(wc -l < "$fileName")
word_count=$(wc -w < "$fileName")
char_count=$(wc -c < "$fileName")

echo "Number of line in '$fileName' is $line_count"
echo "Number of word in '$fileName' is $word_count"
echo "Number of characters in '$fileName' is $char_count"
