#!/bin/bash -e

#disk=disk2
echo Note, this script is for OSX only and needs editing.
echo Do not use this file if you do not understand how.
echo \$disk needs a good value or you risk losing your data.
echo Use "df -h" to find out the name of your SD disk device.
echo Also, fuse-ext2 also needs to be installed.
exit 1

umount /Volumes/boot
dd bs=1m if=2017-03-02-raspbian-jessie-lite.img of=/dev/r"$disk"
while ! [ -f /Volumes/boot/config.txt ]; do echo .; sleep 1; done
touch /Volumes/boot/ssh
mkdir ./tmpmnt
fuse-ext2 /dev/"$disk"s2 ./tmpmnt -o rw+
while ! [ -f ./tmpmnt/home/pi/.bashrc ]; do echo .; sleep 1; done
cp wpa_supplicant.conf  ./tmpmnt/etc/wpa_supplicant/wpa_supplicant.conf
cp AP.tar ./tmpmnt/home/pi/AP.tar
umount /Volumes/boot
umount ./tmpmnt
diskutil eject /dev/r"$disk"
rmdir ./tmpmnt

