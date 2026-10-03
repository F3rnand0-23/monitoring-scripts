#!/bin/bash
#system monitoring script - logs date and memory usage

LOG_FILE="system_log.txt"

echo "OFICIAL SYSTEM REPORT - $(date)" >> "$LOG_FILE"

free -h | grep Mem >> "$LOG_FILE"
df -h | grep -E "^/dev" >> "$LOG_FILE"
uptime >> "$LOG_FILE"

echo "-----------------------------" >> "$LOG_FILE"




