# RPi-Wifi-or-AP

This repo is primarily a note to myself regarding how to setup the RPi Zero W to connect to a WiFi network (settings for BTHomeHub6), and optionally, how to login and reconfigure it as an access point (i.e. one without access to the internet).

This script is for OSX only and copies a raspbian image onto a SD card making some tweaks.
It requires fuse-ext2, a raspbian image, and needs manual configuration to make it work.
If you do use it, then it is at your own risk.

1. Use df -h to figure out the name of your SD disk device.
2. Edit setupSD.sh to use this disk (and remove the warning and early exit).
3. Edit the wpa_supplicant.conf with your own wifi configuration.
4. sudo ./setupSD.sh
5. Put the SD card in the RPi and boot.
6. You should be able to connect via ssh.
7. Untar the AP.tar file, cd AP, and run sudo ./setup.sh (answer yes to any installs).
8. sudo ./AP.sh on or sudo ./AP.sh off will switch between access point and regular mode.
