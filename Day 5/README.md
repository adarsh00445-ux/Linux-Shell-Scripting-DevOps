## Day 5 — Scan Logs for Failures and Count Results

This script searches all log files ending in .log inside the /var/log directory. It looks for lines containing the word "failed" (ignoring case) and displays the filename and line number for each match. It prints the results to the screen while counting the total number of failures found.

Run: `./system_automation.sh`
