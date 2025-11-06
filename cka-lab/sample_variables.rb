# -*- mode: ruby -*-
# vi: set ft=ruby :

CLONE_DIRECTORY = "C:\\VMs"
DOMAIN = ".devops.example"
PROVIDER = "vmware_desktop" # Supported values are vmware_desktop and virtualbox
NETMASK = "255.255.255.0" # Required if PROVIDER is virtualbox
MACHINES = [{NAME: "cka-server",
            HOSTNAME: "cka-server#{DOMAIN}",
            BOX: "bento/ubuntu-24.04",
            CPU: "2",
            MEMORY: "2048",
            IPADDR: "192.168.44.21",
            MACADDR: "16C8613AC429",
            GUI: false},
            {NAME: "cka-node-0",
            HOSTNAME: "cka-node-0#{DOMAIN}",
            BOX: "bento/ubuntu-24.04",
            CPU: "1",
            MEMORY: "2048",
            IPADDR: "192.168.44.22",
            MACADDR: "16C8619B5E9E",
            GUI: false},
            {NAME: "cka-node-1",
            HOSTNAME: "cka-node-1#{DOMAIN}",
            BOX: "bento/ubuntu-24.04",
            CPU: "1",
            MEMORY: "2048",
            IPADDR: "192.168.44.23",
            MACADDR: "16C861F49C82",
            GUI: false}]
