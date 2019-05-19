1. Enable SSH startup

systemctl enable ssh

2. Change default keyboard layout
vim /etc/default/keyboard

Change XKBLAYOUT -> "US"

3. Enable service

systemctl enable service-file

4. Connect external disk

apt install ntfs-3g
mount -t ntfs-3g /dev/sda1 /mnt/data

5. Set localtime
sudo cp /usr/share/zoneinfo/Asisa/Singapore /etc/localtime
