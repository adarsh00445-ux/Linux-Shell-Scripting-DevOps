#!/bin/bash
#=============================================================================

# QUESTION

# Write a Bash command/script that:

# You have a log file called 'server.log'.

# Find all lines containing the word 'ERROR',
# ignoring uppercase/lowercase differences.

# Also display the line numbers of those lines.
#=============================================================================

F1=server.log

grep -in "error" $F1
