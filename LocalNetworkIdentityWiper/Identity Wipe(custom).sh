#!/bin/sh
echo "Enter the MAC address you want to set (format: XX:XX:XX:XX:XX:XX):"
read NEW_MAC
if ! echo "$NEW_MAC" | grep -Eq '^([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}$'; then
  echo "[-] Invalid MAC address format."
  exit 1
fi

sudo ifconfig eth0 down
sudo ifconfig wlan0 down
sudo ifconfig docker0 down

sudo macchanger --mac="$NEW_MAC" eth0
sudo macchanger --mac="$NEW_MAC" wlan0
sudo macchanger --mac="$NEW_MAC" docker0

sudo ifconfig eth0 up
sudo ifconfig wlan0 up
sudo ifconfig docker0 up

clear
echo "Your new identity is ready."
echo "Restarting your computer in 10 seconds..."
sleep 10
sudo shutdown -r now
