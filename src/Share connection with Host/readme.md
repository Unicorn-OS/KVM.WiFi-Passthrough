# Make the VM act like a Router / Gateway, and share the WiFi connection with host!

Steps:
1. create a "Open" network in Virt-Manager.
Default settings work! Only disable DHCP, since guest will provide these.

Details:
Name: open
Device: virbr1
Autostart: On Boot

xml:
```xml
<network connections="1">
  <name>open</name>
  <uuid>47c33f13-47a2-4e5f-af53-377cdeb1c10b</uuid>
  <forward mode="open"/>
  <bridge name="virbr1" stp="on" delay="0"/>
  <mac address="52:54:00:25:20:34"/>
  <domain name="open"/>
</network>
```

2. Assign this open network to Guest.
example: virsh-dump-xml
```xml
<interface type="network">
  <mac address="52:54:00:b3:32:91"/>
  <source network="open" portid="77340a4a-daae-4d4a-8a67-891dfe34e4ed" bridge="virbr1"/>
  <target dev="vnet3"/>
  <model type="virtio"/>
  <alias name="net1"/>
  <address type="pci" domain="0x0000" bus="0x08" slot="0x00" function="0x0"/>
</interface>
```

3. In Guest, share connection.
This is easy in Gnome Network Manager!
- click the Network Interface for your open network
- -> IPV4
- select: "Shared to other computers"

4. on Host, Request IP with DHCPd!
first lookup your new virtual network interface: should be `virbr1`

run DHCPd to get a connection:
```sudo dhcpcd virbr1```
