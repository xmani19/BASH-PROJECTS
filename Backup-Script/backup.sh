#!/bin/bash

# Set source and destination directories
SOURCE="$1"
DESTINATION="${2:-$HOME/Backups}"

# Create the backup directory if it doesn’t exist
mkdir -p "$DESTINATION"

# Generate a timestamped filename
BACKUP_FILE="$DESTINATION/backup_$(date +'%Y-%m-%d_%H-%M-%S').tar.gz"

# Perform the backup
echo "🔄 Backing up $SOURCE to $BACKUP_FILE..."
tar -czf "$BACKUP_FILE" "$SOURCE"

echo "✅ Backup completed successfully!"
