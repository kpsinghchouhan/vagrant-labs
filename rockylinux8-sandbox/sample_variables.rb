# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = "bento/rockylinux-8"
DOMAIN = ".devops.example"
HOSTNAME = "rockylinux8-sandbox" + DOMAIN
IPADDR = "192.168.44.15"
MACADDR = "6F20DC6846CD"
NETMASK = "255.255.255.0"
PROVIDER = "vmware_desktop"
CLONE_DIRECTORY = "C:\\VMs"
CPU = "2"
MEMORY = "4096"
GUI = false