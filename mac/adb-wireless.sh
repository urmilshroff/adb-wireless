#!/bin/zsh

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
DEFAULT="\033[0m"

FIRST_DEVICE=$(adb devices | awk "NR==2")

if [ -z "$FIRST_DEVICE" ]; then
    echo -e "\n${RED}Error: no device found!${DEFAULT}"
    echo -e "1. Ensure your phone and computer are on the same Wi-Fi network"
    echo -e "2. Make sure USB debugging is enabled"
    echo -e "3. Connect your phone via a USB cable"
    echo -e "4. Run the script again"
    echo -e "5. You can then disconnect the cable\n"
    
else
    echo -e "\n${YELLOW}Starting ADB Wireless by Urmil Shroff...${DEFAULT}"
    IP_ADDRESS=$(adb shell "ip addr show wlan0 | grep -e wlan0$ | cut -d\" \" -f 6 | cut -d/ -f 1")
    adb tcpip 5555
    sleep 1
    adb connect $IP_ADDRESS:5555
    echo -e "To disconnect your phone, run ${YELLOW}adb disconnect${DEFAULT}."
    echo -e "${GREEN}You can remove your cable if you haven't already!${DEFAULT}\n"
fi