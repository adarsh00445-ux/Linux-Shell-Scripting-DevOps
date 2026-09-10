#!/bin/bash
#=========================================================
#=========================================================

# QUESTION

# Check all .log files in /var/log.
# For each file, count the lines containing "ERROR".
# Print: filename -> error count.
# If any file has more than 10 errors, print "ALERT"
# and exit with status 1.

#=========================================================
#=========================================================

Files=$(find /var/log/ -type f -name "*.log" 2>/dev/null)

for i in $Files; do
    count=$(grep -ic "error" "$i" 2>/dev/null)
    echo "$i -> $count"
    if [ "$count" -gt 10 ]; then
        echo "ALERT"
        exit 1
    fi
done
