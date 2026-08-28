#!/bin/bash
echo "===== SYSTEM HEALTH CHECK ====="
echo "User: $(whoami)"
echo "Hostname: $(hostname)"
disk=$(df -h / | tail -1 | awk '{print $5}' | tr -d "%")
echo "Disk usage: $disk%"
if [ $disk -gt 80 ]; then
    echo "WARNING: Disk usage is high!"
else
    echo "OK: Disk usage is normal."
fi
echo "===== CHECK COMPLETE ====="
