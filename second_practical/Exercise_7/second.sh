#!/bin/bash

# Specify the filename you want to create or update
filename="example"

# Use the 'touch' command to create or update the file
mkdir "$filename"

# Check if the 'touch' command was successful
if [ $? -eq 0 ]; then
    echo "Directory '$filename' has been created or updated."
else
    echo "Error: Failed to create or update '$filename'."
fi
