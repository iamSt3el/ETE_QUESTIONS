#!/bin/bash

filename="Sample.txt"

touch "$filename"

if [ $? -eq 0 ]; then
    echo "File '$filename' has been created or updated."
else
    echo "Error: Failed to create or update '$filename'."
fi
