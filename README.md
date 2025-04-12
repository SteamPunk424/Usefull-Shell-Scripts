# Enable_DisableMonMode.sh

A simple Bash script to **quickly enable or disable monitor mode** on your wireless interface in the terminal.

## Features

- Lists available wireless interfaces
- Allows you to select the one you want
- Lets you toggle between **monitor** and **managed** mode
- Handles `NetworkManager` to prevent automatic interference

## Requirements

- Run the script **as root**
- Wireless card that supports monitor mode
- `iwconfig`, and `ifconfig` must be installed which it should already be.

## Usage

```bash
sudo ./Enable_DisableMonMode.sh

