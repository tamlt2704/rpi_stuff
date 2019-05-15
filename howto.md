1. Enable SSH startup

systemctl enable ssh

2. Change default keyboard layout
vim /etc/default/keyboard

Change XKBLAYOUT -> "US"

3. Enable service

systemctl enable service-file
