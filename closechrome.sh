#!/bin/bash
# Start Shortwave
open "/Users/*******/Applications/Chrome Apps.localized/Shortwave.app"

# Loop to check if Shortwave is still running
while pgrep -f "Shortwave.app/Contents/MacOS/app_mode_loader" > /dev/null; do
    sleep 5  # Check every 5 seconds
done

# When Shortwave is closed, kill all Chrome processes
pkill -i "Google Chrome"
