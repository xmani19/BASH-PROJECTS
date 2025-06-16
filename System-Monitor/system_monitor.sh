#!/bin/bash

echo "===== Mani's System Monitor ====="

# Display current date and time
echo -e "\n📅 Date & Time: $(date)"

# Show CPU usage
echo -e "\n🖥️  CPU Usage:"
mpstat 1 1 | awk 'NR==4 {printf "User: %s%% | System: %s%% | Idle: %s%%\n", $3, $5, $12}'

# Show Memory usage
echo -e "\n🧠 Memory Usage:"
free -h | awk 'NR==2 {printf "Used: %s | Free: %s | Total: %s\n", $3, $4, $2}'

# Show Disk usage
echo -e "\n💾 Disk Usage:"
df -h | awk '$NF=="/" {printf "Used: %s | Free: %s | Total: %s\n", $3, $4, $2}'

# Show System Uptime
echo -e "\n⏳ System Uptime:"
uptime -p

# Show Top 5 Running Processes (by CPU)
echo -e "\n⚙️  Top Running Processes:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -6 | tail -5

# Show Network Info (IP Address)
echo -e "\n🌐 Network Info:"
ip a | grep "inet " | awk '{print "IP Address:", $2}'

echo -e "\n✅ System Monitor Complete ✅"

