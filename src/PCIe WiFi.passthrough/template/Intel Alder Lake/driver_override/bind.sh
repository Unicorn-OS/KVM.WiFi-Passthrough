dev=0000:00:14.3

echo "vfio-pci" | sudo tee /sys/bus/pci/devices/$dev/driver_override

echo "$dev" | sudo tee /sys/bus/pci/drivers/vfio-pci/bind
