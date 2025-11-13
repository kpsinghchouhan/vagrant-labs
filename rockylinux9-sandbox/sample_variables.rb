# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = "bento/rockylinux-9"
DOMAIN = ".devops.example"
HOSTNAME = "rockylinux9-sandbox" + DOMAIN
PROVIDER = "vmware_desktop" # Supported values are vmware_desktop and virtualbox
# Provide IP address value to reserve static IP address
# To use VMware NAT adapter, check assigned IP range with NAT adapter and accordingly
# provide values between 192.168.*.[3-127]
# To use Virtualbox, provide a valid 192.168.*.* address with correct subnetmask
IPADDR = "192.168.44.23" # Use it to reserve static ip address
MACADDR = "16C861079196" # Required if PROVIDER is vmware_desktop
NETMASK = "255.255.255.0" # Required if PROVIDER is virtualbox
CLONE_DIRECTORY = "C:\\VMs" # Required if PROVIDER is vmware_desktop
CPU = "2"
MEMORY = "4096"
GUI = false
