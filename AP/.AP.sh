#!/bin/bash -e

if [ "$1" == "off" ];
then
  ln -sf /etc/default/.hostapd.ORG /etc/default/hostapd
  rm  -f /etc/hostapd/.hostapd.conf
  ln -sf /etc/.udhcpd.conf.ORG /etc/udhcpd.conf
  ln -sf /etc/default/.udhcpd.ORG /etc/default/udhcpd
  ln -sf /etc/network/.interfaces.ORG /etc/network/interfaces
  exit 0
fi
if [ "$1" == "on" ];
then
  ln -sf /etc/default/.hostapd.AP /etc/default/hostapd
  ln -sf /etc/hostapd/.hostapd.conf.AP /etc/hostapd/hostapd.conf
  ln -sf /etc/.udhcpd.conf.AP /etc/udhcpd.conf
  ln -sf /etc/default/.udhcpd.AP /etc/default/udhcpd
  ln -sf /etc/network/.interfaces.AP /etc/network/interfaces
  exit 0
else
  echo "sudo ./AP.sh on|off"
fi

