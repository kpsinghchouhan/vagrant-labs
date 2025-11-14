# -*- mode: ruby -*-
# vi: set ft=ruby :

CLONE_DIRECTORY = "C:\\VMs"
DOMAIN = ".devops.example"
PROVIDER = "vmware_desktop" # Supported values are vmware_desktop and virtualbox
NETMASK = "255.255.255.0" # Required if PROVIDER is virtualbox
MACHINES = [{NAME: "pe-server",
            HOSTNAME: "pe-server#{DOMAIN}",
            BOX: "bento/ubuntu-24.04",
            CPU: "2",
            MEMORY: "4096",
            IPADDR: "192.168.44.51",
            MACADDR: "F50E723B588B",
            GUI: false},
            {NAME: "pe-host-01",
            HOSTNAME: "pe-host-01#{DOMAIN}",
            BOX: "bento/ubuntu-2404",
            CPU: "1",
            MEMORY: "2048",
            IPADDR: "192.168.44.52",
            MACADDR: "F898FCCDBBEB",
            GUI: false},
            {NAME: "pe-host-02",
            HOSTNAME: "pe-host-02#{DOMAIN}",
            BOX: "bento/rockylinux-10",
            CPU: "1",
            MEMORY: "2048",
            IPADDR: "192.168.44.53",
            MACADDR: "EFFFDFC7488B",
            GUI: false}]
