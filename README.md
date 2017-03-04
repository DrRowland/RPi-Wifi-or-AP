# RPi-Wifi-or-AP

This repo is primarily a note to myself regarding how to setup an RPi Zero W as an access point.

This script is for OSX only and copies a raspbian image onto a SD card making some tweaks.
It requires fuse-ext2, a raspbian image, and needs manual configuration to make it work.
i.e.
1) Use df -h to figure out the disk
2) Edit setupSD.sh to use this disk (and remove the warning and early exit)
3) Edit the wpa_supplicant.conf with your own wifi configuration.
3) sudo ./setupSD.sh
4) Put the SD card in the RPi and boot.
5) You should be able to connect via ssh
6) untar the AP.tar, cd AP, and run sudo ./setup.sh (answer yes to any installs)
7) sudo ./AP.sh off or sudo ./AP.sh off to switch between access point and regualar mode.
