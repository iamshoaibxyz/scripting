#!/bin/bash

# Title of the Script
echo "Monitoring Free RAM Space"

# Get the total memory and free memory in human-readable format
echo "Total RAM: $(free -h | grep Mem | awk '{print $2}')"
echo "Used RAM: $(free -h | grep Mem | awk '{print $3}')"
echo "Free RAM: $(free -h | grep Mem | awk '{print $4}')"

# Optional: Checking for swap space (if available)
echo "Total Swap: $(free -h | grep Swap | awk '{print $2}')"
echo "Used Swap: $(free -h | grep Swap | awk '{print $3}')"
echo "Free Swap: $(free -h | grep Swap | awk '{print $4}')"

# Check if RAM usage is more than 80% and notify the user
used_memory_percentage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
if (( $(echo "$used_memory_percentage > 80" | bc -l) )); then
    echo "Warning: RAM usage is high! ($used_memory_percentage% used)"
else
    echo "RAM usage is normal ($used_memory_percentage% used)"
fi

