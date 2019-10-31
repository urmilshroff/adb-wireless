#!/bin/zsh

FIRST_DEVICE=$(adb devices | awk 'NR==2')

if [ -z "$FIRST_DEVICE" ]; then
    echo "Please connect your phone with a USB cable first!"
else
    echo -e "Initializing adb-wireless..."
    IP_ADDRESS=$(adb shell "ip addr show wlan0 | grep -e wlan0$ | cut -d\" \" -f 6 | cut -d/ -f 1")
    adb tcpip 5555
    sleep 2
    adb connect $IP_ADDRESS:5555
    echo -e "You can remove the cable if you haven't already!"
    echo -e "To disconnect your phone, run 'adb disconnect'."
fi