#!/usr/bin/env python3
import sys
import psutil
import platform
from datetime import datetime

def bytes_to_gb(bytes_value):
    return round(bytes_value / (1024 ** 3), 2)

print("=== System Health Report ===")
print("Date:", datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
print("System:", platform.node(), platform.system(), platform.release())
print()

# ---- Memory ----
mem = psutil.virtual_memory()
print("[Memory Usage]")
print(f"Total: {bytes_to_gb(mem.total)} GB")
print(f"Used:  {bytes_to_gb(mem.used)} GB ({mem.percent}%)")
print()

# ---- Disk ----
disk = psutil.disk_usage('/')
print("[Disk Usage]")
print(f"Total: {bytes_to_gb(disk.total)} GB")
print(f"Used:  {bytes_to_gb(disk.used)} GB ({disk.percent}%)")
print()

# ---- CPU ----
print("[CPU Usage]")
print(f"CPU cores: {psutil.cpu_count(logical=True)}")
print(f"CPU utilization: {psutil.cpu_percent(interval=1)}%")
print()

# ---- Interpretation ---
# these messages assume we have some familiarity with expected behavior / uptime requirements of an application
# this is also just a point in time, not a trend, which would be a better way to analyze if scaling is needed or if architecture supports the needs of the application's users.
# if mem.percent >= 95:
#     print("You are very cost efficient- you're almost using all your memory, but may want to consider scaling or a different SKU, depending on usage.")
# elif mem.percent >= 85:
#     print("Your memory is well allocated, but any traffic spikes could cause slowdown or crashing.")
# else:
#     print("You have plenty of memory capacity, so you could potentially scale down or keep things the same.")
# =======

metrics = [mem.percent, disk.percent, psutil.cpu_percent()]
for metric in metrics:
    if metric >= 95:
        print(f"You are very cost efficient- you're almost using all your {metric}, but may want to consider scaling or a different SKU, depending on usage.")
    elif metric >= 85:
        print(f"Your {metric} is well allocated, but any traffic spikes could cause slowdown or crashing.")
    else:
        print(f"You have plenty of {metric}, so you could potentially scale down or keep things the same.")

# ---- Optional: Alerts ----
if mem.percent > 90:
    print("⚠️ WARNING: Memory usage over 90%!")
if disk.percent > 90:
    print("⚠️ WARNING: Disk usage over 90%!")
if psutil.cpu_percent(interval=1) > 90:
    print("⚠️ WARNING: CPU usage over 90%!")

print("=============================")
