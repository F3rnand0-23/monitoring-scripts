#!/bin/bash
# Rotate the system log if it exceeds 100 lines

LOG_FILE="system_log.txt"
MAX_LINES=100

if [ -f "$LOG_FILE" ]; then
    LINE_COUNT=$(wc -l < "$LOG_FILE")
    if [ "$LINE_COUNT" -gt "$MAX_LINES" ]; then
        mv "$LOG_FILE" "system_log_$(date +%Y%m%d_%H%M%S).txt"
        echo "Log rotated successfully"
    else
        echo "Log rotation not needed. Current lines: $LINE_COUNT"
    fi
fi
