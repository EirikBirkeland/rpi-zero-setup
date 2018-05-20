#!/bin/bash

echo "Setting up local WIFI ..."

echo "Updating wpa_supplicant.conf ..."
echo >> ./wpa_supplicant.conf << EOF
network={
    ssid=$WLAN_SSID
    psk=$WLAN_PSK
}
EOF

echo "Reinitiating interface ..."
wpa_cli -i wlan0 reconfigure
