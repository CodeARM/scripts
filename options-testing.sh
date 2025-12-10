#!/bin/bash

if [ -z "$1" ]
then 
  echo "Usage: -d (disk info), -p (current process), -u (system uptime"
elif [ -n "$1" ]
then 
  while [ -n ""$1" ]
  do
    case "$1" in 
      -d) echo "Disk Info": df -h ;;
      -p) echo "Current Processes": htop ;;
      -u) echo "System Uptime": uptime ;;
      *) echo "$1" is not an option"
        echo "Usage: -d for disk info, -p for current processes, -u for system uptime: ;;
    esac
    shift
  done
else 
  echo "Something is broken"
fi