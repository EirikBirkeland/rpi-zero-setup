#!/bin/bash

echo "Setting up local WIFI ..."
echo >> /etc/wpa_supplicant/wpa_supplicant.conf << EOL
network={
    ssid=$WLAN_SSID
    psk=$WLAN_PSK
}
EOL

echo "Reinitiating interface ..."
wpa_cli -i wlan0 reconfigure
