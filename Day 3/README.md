## Day 3 — App Log Existence and Error Threshold Check

This script checks if a specific log file (/var/log/app.log) exists on the system. If the file is missing, it prints an error. If the file exists, it uses grep to count the number of error messages inside it and prints an "alert" if that count goes above 10.

Run: `./file_check.sh`
