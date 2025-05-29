#/etc/default/grub
id="8086:7af0"

vfio-pci.ids=${id}

sudo update-grub2

test(){
cat /proc/cmdline
}
