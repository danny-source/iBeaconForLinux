
iBeacon For Linux

=============

Using Bluetooth Smart Read Dongle and Linux to Broadcast iBeacon.
i.e. Raspberry pi

Usage:

1. Checking your Environment

```
sudo hciconfig
```

result like this:

```
hci0:	Type: BR/EDR  Bus: USB
	BD Address: 00:02:xx:DC:xx:4F  ACL MTU: 1021:8  SCO MTU: 64:1
	UP RUNNING
	RX bytes:1144 acl:0 sco:0 events:71 errors:0
	TX bytes:1173 acl:0 sco:0 commands:71 errors:0
```

2.Setting ibeacon.conf

```
export BLUETOOTH_DEVICE=hci0
export UUID="e2 c5 6d b5 df fb 48 d2 b0 60 d0 f5 a7 10 96 e0"
export MAJOR="00 00"
export MINOR="00 00"
export POWER="c9
```
* BLUETOOTH_DEVICE THE Bluetooth device name
* UUID  The 128-bit ID indentifying your company/store/etc
* MAJOR The major value (to differentiate individual stores, etc.)
* MINOR The minor value (to differentiate nodes withing one location, etc.)
* POWER This value is used to try to estimate distance based on the RSSI value

3.Start and Stop

Start:

```
./start.sh
```

Stop

```
./stop.sh
```

