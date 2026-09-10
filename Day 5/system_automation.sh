#!/bin/bash
#=======================================================
#=======================================================

# QUESTION

# Write a script that checks all .log files in /var/log.
# Find lines containing "failed", ignoring case.
# Display the filename and line number for each match.

#=======================================================
#=======================================================

find /var/log -type f -name "*.log" -exec grep -ain "failed" {} + | tee /dev/stderr | wc -l
