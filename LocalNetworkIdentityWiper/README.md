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
