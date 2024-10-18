#!/usr/bin/env sh

read -p "Enter the number of seconds for the timer to last: " TIME

sleep $TIME
notify-send -w -u critical "Timer
Complete!"
echo "Timer Complete."
