#!/bin/bash
#system monitoring script - logs date and memory usage

LOG_FILE="system_log.txt"

echo "DAILY MEMORY CHECK - $(date)" >> "$LOG_FILE"

free -h | grep Mem >> "$LOG_FILE"
uptime >> "$LOG_FILE"

echo "-----------------------------" >> "$LOG_FILE"




