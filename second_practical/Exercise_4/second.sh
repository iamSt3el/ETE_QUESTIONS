#!/bin/bash

# Check if at least one filename is provided as a command-line argument
if [ "$#" -eq 0 ]; then
    echo "Error: Please provide one or more filenames as command-line arguments."
    exit 1
fi

for filename in "$@"; do
    # Check if the file exists
    if [ ! -f "$filename" ]; then
        echo "Error: File '$filename' does not exist."
        continue  # Skip to the next file
    fi

    # Count the number of lines, words, and characters in the file
    line_count=$(wc -l < "$filename")
    word_count=$(wc -w < "$filename")
    char_count=$(wc -c < "$filename")

    echo "File: $filename"
    echo "Number of lines: $line_count"
    echo "Number of words: $word_count"
    echo "Number of characters: $char_count"
    echo
done
