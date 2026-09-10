#!/bin/bash
#======================================================================
#Day 1 - The 3 AM Disk Alert
#======================================================================

#QUESTION
#----------------------------------------------------------------------
#Write a Bash script 'disk_check.sh' that:
#
#• Checks disk usage on all mounted filesystems.
#• Warns if any partition is above 80%, showing 
#  the partition name and usage %.
#• Lists the top 5 largest directories under '/var'.
#• Logs the result with a timestamp.

#======================================================================
#SOLUTION
#======================================================================

echo "=== DISK CHECK RUN: $(date) ==="
DiskSpace=$(df -h / | awk 'NR==2 {print $5}')

Clean=${DiskSpace/\%/}

if [ $Clean -gt 80 ]
then
    echo "High Disk Usage"
else
    echo "Disk is at $Clean%"
fi
