# ADB Wireless🤖

Easily connect an Android device to your computer using ADB - wirelessly! This reduces cable mess during app development and other such tasks that rely on the Android Debug Bridge.

**NOTE:** to use ADB wirelessly, you must first connect your phone via USB cable each time you want to do this. There currently is no workaround for it, but after running the script for a few seconds, you can remove your cable and use ADB wirelessly.

## Setup

-   [Install](https://developer.android.com/studio/releases/platform-tools) the Android Platform Tools on your computer
-   Clone the repo using `git clone https://github.com/urmilshroff/adb-wireless.git`
-   `cd` into your platform-specific subdirectory
-   Run the installer script using `sh install.sh`

## Usage

-   Ensure your phone and computer are on the same Wi-Fi network
-   Make sure USB debugging is enabled
-   Connect your phone via a USB cable
-   Run the script using `adb-wireless` (restart Terminal if it doesn't work)
-   You can then disconnect the cable
-   Profit!

## Contributing

I would love it if you could contribute to this project! Please see the [open issues](https://github.com/urmilshroff/adb-wireless/issues) or create your own, and fork and [send a pull request](https://github.com/urmilshroff/adb-wireless/pulls) with your changes. You know the drill!

## Credits

This script was written by me (Urmil Shroff) based on instructions from [this answer](https://stackoverflow.com/a/42364486/7662149) on Stack Overflow. **I DID NOT INVENT WIRELESS ADB**, I simply made an easy-to-use script!
