#!/bin/zsh

if [ -f ~/Library/Android/sdk/platform-tools/adb-wireless ]; then
    echo -e "Removing old version..."
    rm ~/Library/Android/sdk/platform-tools/adb-wireless
fi

echo -e "Installing adb-wireless..."

cp adb-wireless.sh ~/Library/Android/sdk/platform-tools
mv ~/Library/Android/sdk/platform-tools/adb-wireless.sh ~/Library/Android/sdk/platform-tools/adb-wireless
chmod +x ~/Library/Android/sdk/platform-tools/adb-wireless

PATH='PATH="/Users/$USER/Library/Android/sdk/platform-tools/:${PATH}"'
echo "$PATH" >> ~/.zprofile
echo "export PATH" >> ~/.zprofile

echo -e "Done! Run the script anytime using 'adb-wireless'."