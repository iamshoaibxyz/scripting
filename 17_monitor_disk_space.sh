#!/bin/bash

# Title of the Script
echo "Monitoring Free Disk Space"

# Define the threshold for free space (in percentage)
THRESHOLD=75

# Get the disk usage statistics
DISK_USAGE=$(df -h / | grep / | awk '{print $5}' | sed 's/%//')

# Display the current disk usage
echo "Current Disk Usage: $DISK_USAGE%"

# Check if the disk usage is above the threshold
if [ $DISK_USAGE -gt $THRESHOLD ]; then 
    echo "Warning: Disk usage is above $THRESHOLD%. Current usage is $DISK_USAGE%." #| mail -s "Disk Space Alert" your_email@example.com
    #echo "Email sent to alert the high disk usage!"
else
    echo "Disk usage is under control."
fi

