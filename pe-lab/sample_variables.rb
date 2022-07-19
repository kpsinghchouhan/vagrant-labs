# -*- mode: ruby -*-
# vi: set ft=ruby :

CLONE_DIRECTORY = "C:\\VMs"
DOMAIN = ".devops.example"
PROVIDER = "vmware_desktop" # Supported values are vmware_desktop and virtualbox
NETMASK = "255.255.255.0" # Required if PROVIDER is virtualbox
MACHINES = [{NAME: "ansiblecontrolserver",
            HOSTNAME: "ansiblecontrolserver#{DOMAIN}",
            BOX: "bento/centos-7",
            CPU: "2",
            MEMORY: "4096",
            IPADDR: "192.168.44.21",
            MACADDR: "16C8613AC429",
            GUI: false},
            {NAME: "host01",
            HOSTNAME: "host01#{DOMAIN}",
            BOX: "bento/centos-7",
            CPU: "1",
            MEMORY: "2048",
            IPADDR: "192.168.44.22",
            MACADDR: "16C8619B5E9E",
            GUI: false},
            {NAME: "host02",
            HOSTNAME: "host02#{DOMAIN}",
            BOX: "bento/ubuntu-20.04",
            CPU: "1",
            MEMORY: "2048",
            IPADDR: "192.168.44.23",
            MACADDR: "16C861F49C82",
            GUI: false}]
