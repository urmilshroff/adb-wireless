#!/bin/zsh

FIRST_DEVICE=$(adb devices | awk 'NR==2')

if [ -z "$FIRST_DEVICE" ]; then
    echo -e "Error: no device found!"
    echo -e "1. Ensure your phone and computer are on the same Wi-Fi network"
    echo -e "2. Connect your phone to this computer via a USB cable"
    echo -e "3. Run the script again!"
    
else
    echo -e "Initializing adb-wireless..."
    IP_ADDRESS=$(adb shell "ip addr show wlan0 | grep -e wlan0$ | cut -d\" \" -f 6 | cut -d/ -f 1")
    adb tcpip 5555
    sleep 2
    adb connect $IP_ADDRESS:5555
    echo -e "You can remove the cable if you haven't already!"
    echo -e "To disconnect your phone, run 'adb disconnect'."
fi