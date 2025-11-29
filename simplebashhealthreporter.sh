#!/bin/bash

# this is a simple health reporter

echo "=== System Health Report ==="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo ""

# CPU Usage
echo "CPU Usage:"

# Average CPU load over the last 1, 5, and 15 minutes
uptime | awk -F'load average: ' '{ print "Load Average: " $2 }'
# Current CPU utilization snapshot
top -bn1 | grep "CPU(s)" | awk '{print "CPU Usage: " ($2 + $4) "%"}'
echo

echo "============="