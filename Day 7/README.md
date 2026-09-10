## Day 7 — Advanced Log Monitor and Emergency Brake

This script automatically searches through all log files ending in .log inside the /var/log directory. It counts the number of times the word "error" appears in each file. If any single log file has more than 10 errors, it prints an "ALERT" message and stops immediately with exit code 1.

Run: `./log_monitor.sh`
