#!/bin/bash

# this is a simple health reporter

echo "=== System Health Report ==="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo ""

# CPU Usage
echo "CPU Usage:"
uptime 
# cpu_idle=$(top -l 1 | awk '/CPU usage/ {print $7}' | sed 's/%//') | echo "CPU Idle:  ${cpu_idle}%"
echo ""

# Memory Usage
echo "Memory Usage:"
mem_total_bytes=$(sysctl -n hw.memsize) 
echo $mem_total_bytes
echo ""

# Disk Usage
echo "Disk Usage:"
df -h
echo ""

# Network Status
# echo "Network Status:"


echo "============="
