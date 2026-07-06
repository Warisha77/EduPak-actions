#!/bin/bash
# set -x
echo "=== System Health Status Check ==="

# Check Services
for service in apache2 mysql cron; do
    if systemctl is-active --quiet "$service"; then
        echo "Service '$service': RUNNING"
    else
        echo "Service '$service': NOT RUNNING / ISSUES DETECTED"
    fi
done

# Disk Utilization Alert Info
echo "--- Storage Utilization ---"
df -h / | awk 'NR==2 {print "Disk Space Usage: " $5 " filled."}'

echo "=== Evaluation Finished ==="