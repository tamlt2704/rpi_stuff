# wpa_passphrase SSID PASSWORD
# wpa_passphrase mywifi mypassword

systemctl stop dhcpcd
sleep 100
ifconfig wlan0 down
ifconfig wlan0 up
wpa_supplicant -c /etc/wpa_supplicant.conf -i wlan0 -B

dhclient wlan0

systemctl start ssh 
