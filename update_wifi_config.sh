#!/bin/bash

echo "Setting up local WIFI ..."

echo "Updating wpa_supplicant.conf ..."
cat << EOF >> ./wpa_supplicant.conf 
network={
    ssid=$WLAN_SSID
    psk=$WLAN_PSK
}
EOF

echo "Reinitiating interface ..."
wpa_cli -i wlan0 reconfigure
