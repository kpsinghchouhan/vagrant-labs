# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = "bento/centos-7"
DOMAIN = ".devops.example"
HOSTNAME = "centos7-sandbox" + DOMAIN
IPADDR = "192.168.44.14"
MACADDR = "F2B26F945BB0"
NETMASK = "255.255.255.0"
PROVIDER = "vmware_desktop"
CLONE_DIRECTORY = "C:\\VMs"
CPU = "2"
MEMORY = "4096"
GUI = false