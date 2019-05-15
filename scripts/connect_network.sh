# wpa_passphrase SSID PASSWORD
# wpa_passphrase mywifi mypassword

systemctl stop dhcpcd
ifconfig wlan0 down
ifconfig wlan0 up
wpa_supplicant -c /etc/wpa_supplicant.conf -i wlan0 -B
dhclient wlan0

sleep 1000
systemctl start ssh 
