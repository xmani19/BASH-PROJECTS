#!/bin/bash

echo "===== Mani's Log Cleaner ====="

# Set the target log directory and age limit
LOG_DIR="${1:-/var/log}"   # Default: /var/log
DAYS_OLD="${2:-30}"        # Default: 30 days

echo "🧹 Cleaning logs older than $DAYS_OLD days in $LOG_DIR..."

# Find and delete old log files
find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS_OLD" -exec rm -f {} \;

echo "✅ Log Cleanup Complete!"
