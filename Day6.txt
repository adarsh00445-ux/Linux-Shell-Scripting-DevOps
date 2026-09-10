#!/bin/bash
#====================================================
#====================================================

# QUESTION

# Write a script that checks whether a file exists.
# If it exists, print "File found".
# Otherwise, print "File not found".

#====================================================
#====================================================

read -p "Enter file name: " file

if [ -f "$file" ]; then
    echo "File found"
else
    echo "File not found"
    exit 1
fi
