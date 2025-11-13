# -*- mode: ruby -*-
# vi: set ft=ruby :

CLONE_DIRECTORY = "C:\\VMs"
DOMAIN = ".devops.example"
PROVIDER = "vmware_desktop" # Supported values are vmware_desktop and virtualbox
NETMASK = "255.255.255.0" # Required if PROVIDER is virtualbox
MACHINES = [{NAME: "ansible-control-server",
            HOSTNAME: "ansible-control-server#{DOMAIN}",
            BOX: "bento/rockylinux-10",
            CPU: "2",
            MEMORY: "4096",
            IPADDR: "192.168.44.31",
            MACADDR: "16C8613AC429",
            GUI: false},
            {NAME: "ansible-host-01",
            HOSTNAME: "ansible-host-01#{DOMAIN}",
            BOX: "bento/rockylinux-10",
            CPU: "1",
            MEMORY: "2048",
            IPADDR: "192.168.44.32",
            MACADDR: "16C8619B5E9E",
            GUI: false},
            {NAME: "ansible-host-02",
            HOSTNAME: "ansible-host-02#{DOMAIN}",
            BOX: "bento/ubuntu-24.04",
            CPU: "1",
            MEMORY: "2048",
            IPADDR: "192.168.44.33",
            MACADDR: "16C861F49C82",
            GUI: false}]
