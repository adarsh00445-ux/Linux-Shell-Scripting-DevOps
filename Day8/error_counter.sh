#!/bin/bash
#=========================================================
#=========================================================
# 
# QUESTION
# 
# Write a script that takes a filename as $1.
# If no argument is given, print "Usage" and exit 1.
# If the file doesn't exist, print "File not found" and exit 1.
# If it exists, count how many lines contain "ERROR"
# and print the count.
# 
# Constraint: use grep and an if condition.
# 
#=========================================================
#=========================================================

Filename=$1

if [ $# -eq 0 ]
then
    echo "Usage"
    exit 1
fi
if [ ! -f "$1" ]
then
    echo "File not found"
    exit 1
fi

count=$(grep -ic "error" "$1")
echo "$count"
