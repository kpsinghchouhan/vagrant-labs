# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = "bento/ubuntu-18.04"
DOMAIN = ".devops.example"
HOSTNAME = "ubuntu1804-sandbox" + DOMAIN
PROVIDER = "vmware_desktop" # Supported values are vmware_desktop and virtualbox
# Provide IP address value to reserve static IP address
# To use VMware NAT adapter, provide values between 192.168.44.[3-127]
# To use Virtualbox, provide a valid 192.168.*.* address with correct subnetmask
IPADDR = "192.168.44.13"
MACADDR = "16C8614FCD1A"
NETMASK = "255.255.255.0"
CLONE_DIRECTORY = "C:\\VMs"
CPU = "2"
MEMORY = "4096"
GUI = false