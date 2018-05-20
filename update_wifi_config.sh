#!/bin/bash

echo "Setting up local WiFi ..."

echo "Updating wpa_supplicant.conf ..."
cat <<EOF >> ./wpa_supplicant.conf 
network={
    ssid=$WLAN_SSID
    psk=$WLAN_PSK
}
EOF

echo "Reinitiating interface ..."
wpa_cli -i wlan0 reconfigure

echo "What's next?"
echo "You should inspect /etc/wpa_supplicant/wpa_supplicant.conf and update the values according to local copy"
