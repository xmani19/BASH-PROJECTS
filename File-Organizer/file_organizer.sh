#!/bin/bash

echo "===== Mani's File Organizer ====="

# Set the directory to organize
DIRECTORY="${1:-$HOME/Downloads}"  # Default to Downloads if no argument is given

# Define file types and target folders
declare -A FOLDERS
FOLDERS["Documents"]="*.pdf *.docx *.txt"
FOLDERS["Images"]="*.jpg *.png *.gif"
FOLDERS["Videos"]="*.mp4 *.mkv *.avi"
FOLDERS["Music"]="*.mp3 *.wav *.flac"
FOLDERS["Archives"]="*.zip *.tar.gz *.rar"
FOLDERS["Scripts"]="*.sh *.py *.js"

# Create folders if they don’t exist
for folder in "${!FOLDERS[@]}"; do
    mkdir -p "$DIRECTORY/$folder"
done

# Move files into respective folders
for folder in "${!FOLDERS[@]}"; do
    for ext in ${FOLDERS[$folder]}; do
        mv "$DIRECTORY"/$ext "$DIRECTORY/$folder" 2>/dev/null
    done
done

echo "✅ File Organization Complete ✅"
