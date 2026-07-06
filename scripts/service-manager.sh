#!/bin/bash

# Confirm correct parameter parsing
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage Error: Execution parameters missing."
    echo "Syntax: $0 [service_name] [action]"
    echo "Valid actions: start, stop, restart, status"
    exit 1
fi

SERVICE_NAME=$1
ACTION=$2

# Check Action Validity
case "$ACTION" in
    start|stop|restart|status)
        echo "Executing systemctl action: '$ACTION' for service: '$SERVICE_NAME'..."
        ;;
    *)
        echo "Invalid action: '$ACTION'. Use start, stop, restart, or status."
        exit 1
        ;;
esac

# Execute Command
sudo systemctl "$ACTION" "$SERVICE_NAME"

# Check exit code
if [ $? -eq 0 ]; then
    echo "Result Status: SUCCESS"
else
    echo "Result Status: FAILED"
fi