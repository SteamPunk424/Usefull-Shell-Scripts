This is a script that changes your hardware address for local networks making you look like a new device.  
Useful for network ban evasion.  
# I am not responsible for any damages while using this script!  
# For Research Purposes only!  
# P.S. THIS DOESNT MAKE YOU INVISABLE. NETWORKS CAN STILL SEE A NEW DEVICE AUTHENTICATING!  

## Requirements

This script requires the following to be installed and available in `$PATH`:

- **Linux** (tested on Debian-based systems)
- **macchanger**
- **net-tools** (for `ifconfig`)
- **sudo** privileges
- Network interfaces named:
  - `eth0`
  - `wlan0`
  - `docker0`

### Install dependencies (Debian/Ubuntu)
```bash
sudo apt update
sudo apt install macchanger net-tools
```
## Usage

```bash
chmod +x Identity\ Wipe.sh
./Identity\ Wipe.sh
```

The custom script is used to set a specific mac address if you dont want to set a random one.


This script will restart your device so make sure you save your work.
