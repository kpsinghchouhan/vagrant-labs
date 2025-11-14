# -*- mode: ruby -*-
# vi: set ft=ruby :

CLONE_DIRECTORY = "C:\\VMs"
DOMAIN = ".devops.example"
PROVIDER = "vmware_desktop" # Supported values are vmware_desktop and virtualbox
NETMASK = "255.255.255.0" # Required if PROVIDER is virtualbox
MACHINES = [{NAME: "k8s-server",
            HOSTNAME: "k8s-server#{DOMAIN}",
            BOX: "bento/ubuntu-24.04",
            CPU: "2",
            MEMORY: "2048",
            IPADDR: "192.168.44.41",
            MACADDR: "6BCDFC03F9C9",
            GUI: false},
            {NAME: "k8s-node-0",
            HOSTNAME: "k8s-node-0#{DOMAIN}",
            BOX: "bento/ubuntu-24.04",
            CPU: "1",
            MEMORY: "2048",
            IPADDR: "192.168.44.42",
            MACADDR: "DFBABB663FAF",
            GUI: false},
            {NAME: "k8s-node-1",
            HOSTNAME: "k8s-node-1#{DOMAIN}",
            BOX: "bento/ubuntu-24.04",
            CPU: "1",
            MEMORY: "2048",
            IPADDR: "192.168.44.43",
            MACADDR: "9A634A72C5F7",
            GUI: false}]
