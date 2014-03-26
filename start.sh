#!/bin/sh
. ./ibeacon.conf
echo "[Bluetooth-Startup Bluetooth]"
sudo hciconfig $BLUETOOTH_DEVICE up
echo "[iBeacon-Setting iBeacon]"
sudo hciconfig $BLUETOOTH_DEVICE noleadv
sudo hcitool -i hci0 cmd 0x08 0x0008 1e 02 01 1a 1a ff 4c 00 02 15 $UUID $MAJOR $MINOR $POWER 00 00 00 00 00 00 00 00 00 00 00 00 00
sudo hciconfig $BLUETOOTH_DEVICE leadv 0
echo "iBeacon-iBeacon is working"
