# rpi-zero-setup
# Some post-install initialization for my rpi zero IOT projects

1. Connect to local Wifi (SSID and pass as environment variables)

`sudo nano /etc/wpa_supplicant/wpa_supplicant.conf`
```
network={
    ssid=$LOCAL_SSID
    psk=$LOCAL_PASSWORD
}
```
(https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md)

# Tmux is convenient
sudo apt-get install tmux vim -y

