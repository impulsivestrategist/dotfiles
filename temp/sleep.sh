!#/usr/bin/env bash

# In minutes
SLEEP_TIME=60

# Turn off display (package is xorg-xset)
xset dpms ${SLEEP_TIME} 0 0

# Sleep after SLEEP_TIME in seconds
sleep $((SLEEP_TIME * 60))
systemctl suspend
