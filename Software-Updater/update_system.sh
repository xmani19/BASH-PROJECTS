#!/bin/bash

echo "===== Mani's Software Updater ====="

# Update package lists
echo "🔄 Checking for updates..."
sudo apt update -y

# Upgrade all installed packages
echo "⚙️ Installing updates..."
sudo apt upgrade -y

# Clean up unnecessary packages
echo "🧹 Cleaning up..."
sudo apt autoremove -y
sudo apt clean

echo "✅ System Update Complete!"
