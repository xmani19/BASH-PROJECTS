#!/bin/bash

echo "===== Mani's Network Info Script ====="

# Get local IP addresses
echo "🌐 Local IP Addresses:"
ip -o -4 addr show | awk '{print "📌 " $2 ": " $4}'

# Get external IP address (requires 'curl')
echo "🌍 Public IP Address:"
curl -s ifconfig.me

# Show active network connections
echo "🔗 Active Network Connections:"
netstat -tulnp | grep LISTEN

echo "✅ Network Info Retrieved!"
