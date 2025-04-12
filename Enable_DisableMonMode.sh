#!/bin/bash

# Check if running as root
if [[ "$EUID" -ne 0 ]]; then
  clear
  echo -e "This script must be run as root.\n"
  exit 1
fi

# Get wireless interfaces
clear
echo -e "Script Written by St3amPunk\n\n"
interfaces=($(iw dev | awk '$1=="Interface"{print $2}'))

# Check if any were found
if [ ${#interfaces[@]} -eq 0 ]; then
  echo "No wireless interfaces found."
  exit 1
fi

# Show interface options
echo "Available wireless interfaces:"
for i in "${!interfaces[@]}"; do
  echo "$((i+1)) = ${interfaces[$i]}"
done

# Ask user to select interface
read -p "Choose an interface (enter number): " iface_choice
iface_index=$((iface_choice - 1))
selected_iface="${interfaces[$iface_index]}"

if [ -z "$selected_iface" ]; then
  echo "Invalid interface selection."
  exit 1
fi

# Ask user for mode
clear
echo -e "\n1 = Enable monitor mode"
echo "2 = Disable monitor mode"
read -p "Choose an option (1 or 2): " option

if [ "$option" -eq 1 ]; then
  echo "You chose: Enable monitor mode"
  systemctl stop NetworkManager
  ifconfig "$selected_iface" down
  iwconfig "$selected_iface" mode monitor
  ifconfig "$selected_iface" up
  clear 
  iwconfig

elif [ "$option" -eq 2 ]; then
  echo "You chose: Disable monitor mode"
  ifconfig "$selected_iface" down
  iwconfig "$selected_iface" mode managed
  ifconfig "$selected_iface" up
  systemctl start NetworkManager
  clear
  iwconfig
else
  echo "Not a valid input."
fi

