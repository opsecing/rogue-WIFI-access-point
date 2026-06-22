# -rogue-Wi-Fi-access-point

it basically reates a fake WIFI hotspot to lure people into connecting then uses WPA3 cracking with a custom dictionary to extract their passwords, combines packet sniffing, dictionary based brute force and MITM attacks to steal sensitive data like emails banking credentials or social media logins and stuff

 includes:
 
- a **hostapd** configuration for the rogue AP setup  
- **Aireplay-ng** cmds to capture handshake  
- **Aircrack-ng** script to crack passwords  
- A **phishing HTML** payload for data extraction  

**instructions**:  
1. run `setup.sh` to create the rogue AP
2. use `crack.sh` with a dictionary to break WPA3 passwords
3. customize `web.html` with any phishing html of your choice
4. deploy web.html to steal additional data 

**tools required**:  
- `hostapd`  
- `aireplay-ng`  
- `aircrack-ng`  
- and obv a wordlist file (e.g., `rockyou.txt`)  
