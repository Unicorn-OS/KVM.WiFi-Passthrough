# Blacklist iwlwifi

echo "blacklist iwlwifi" | sudo tee -a /etc/modprobe.d/blacklist.conf

sudo update-initramfs -u -k all
