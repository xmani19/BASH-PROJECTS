#!/bin/bash

echo "===== Mani's Disk Space Analyzer ====="

# Set the target directory (default is home)
DIRECTORY="${1:-$HOME}"

echo "🔍 Scanning: $DIRECTORY"

# Display overall disk usage
df -h "$DIRECTORY"

# Find top 10 largest files
echo "📂 Top 10 Largest Files:"
find "$DIRECTORY" -type f -exec du -h {} + | sort -rh | head -n 10

echo "✅ Disk Analysis Complete!"
