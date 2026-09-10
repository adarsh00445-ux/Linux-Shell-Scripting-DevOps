#!/bin/bash

#============================================================
# QUESTION
# Check whether /var/log/app.log exists.
# If it doesn't exist, display an error and exit.
# If it exists, count ERROR messages (case-insensitive).
# If errors > 10, display an ALERT.
# Otherwise, display OK.
#============================================================

check=/var/log/app.log

if [ ! -f "$check" ]
then
    echo "not exists"
elif [ -f "$check" ]
then
   
    store_errors=$(grep -ic "error" /var/log/app.log)
    
   
    if [ "$store_errors" -gt 10 ]
    then
        echo "alert"
    else
        echo "OK"
    fi
fi
