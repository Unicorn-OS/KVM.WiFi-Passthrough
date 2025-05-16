# Manjaro Gnome - with Network Manager
This is a tiny VM that can run on 1 cpu & 700 MB memory! perfect for a simple setup.

# Minimal Resources - cpu: 1, memory: 700M
In order to Login, & Setup you need 1.5GB Memory
1. set Memory = 1.5 GB
2. Start VM & Login
3. Set interface in `Network Manager -> IPV4 -> Share to other computers`.
4. Then disable "Autologin" in Gnome User Settings. finally `shutdown()`
5. Now edit & reduce VM Memory to 700M. Finally `start_vm()`

It will still perform as a router! You can activate Networks in display manager Login Screen. You just can't Login to Gnome.
