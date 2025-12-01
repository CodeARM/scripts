#!/bin/bash

# this is a simple health reporter

echo "=== System Health Report ==="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo ""

# CPU Usage
echo "CPU Usage:"

# Average CPU load over the last 1, 5, and 15 minutes
uptime # | awk -F'load average: ' '{ print "Load Average: " $2 }'

# Current CPU utilization snapshot
top -bn1 | grep "CPU(s)" | awk '{print "CPU Usage: " ($2 + $4) "%"}'
echo

# Memory Usage - Free and used memory
# free -h | awk 'NR==2{print "Memory Usage: Used " $3 " / Total " $2 " (" $3/$2*100 "%)"}'
echo "Memory Usage:"
free -h | awk 'NR==2{printf "Used: %s / Total:
    %s (%.2f%%)\n", $3, $2, $3/$2*100}'
echo
# Disk Usage
echo "Disk Usage:"
df -h --total | grep 'total' | awk '{print "Used: " $
3 " / Total: " $2 " (" $5 ")"}'
echo
# Network Status
echo "Network Status:"
# Display active network interfaces and their statuses
ip -br addr show | awk '{print $1 ": " $3}'
echo

echo "============="