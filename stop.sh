#!/bin/sh
. ./ibeacon.conf
echo " iBeacon-Disabling iBeacon"
sudo hciconfig $BLUETOOTH_DEVICE noleadv
echo "-Stopped."
