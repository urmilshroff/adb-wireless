#!/bin/zsh

echo -e "Initializing adb-wireless..."
IP_ADDRESS=$(adb shell "ip addr show wlan0 | grep -e wlan0$ | cut -d\" \" -f 6 | cut -d/ -f 1")
adb tcpip 5555
sleep 2
adb connect $IP_ADDRESS:5555
echo -e "Great! You can now remove the cable."
echo -e "To disconnect your phone, run 'adb disconnect'."