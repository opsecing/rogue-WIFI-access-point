#!/bin/bash  

echo "cracking WPA3 password..."  
sudo aircrack-ng -w passwords.txt -b "BSSID" capture.cap  

# YOUR OUTPUT:  
# - FOUND PASSWORD
