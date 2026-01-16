#/!/bin/sh
sudo ifconfig eth0 down
sudo ifconfig wlan0 down
sudo ifconfig docker0 down
sudo macchanger -r eth0
sudo macchanger -r wlan0
sudo macchanger -r docker0
sudo ifconfig eth0 up
sudo ifconfig wlan0 up
sudo ifconfig docker0 up
clear
echo Your new identity is ready
echo Restarting Your Computer in 10 seconds
sleep 10
sudo shutdown -r now
