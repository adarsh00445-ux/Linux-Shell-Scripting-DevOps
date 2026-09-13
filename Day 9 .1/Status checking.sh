#!/bin/bash

SERVICE="docker"

STATUS=$(systemctl is-active "$SERVICE")

if [[ "$STATUS" == "active" ]]
then
    echo "SUCCESS $SERVICE service is running perfectly."
else
    echo "ALERT $SERVICE service is STOPPED or CRASHED!"
fi
