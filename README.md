# Vagrant Lab Environments

This repository contains lab environments which can be built using Vagrant and VMware Workstation Pro/Oracle VirtualBox.

Both Vagrant and VMware Workstation Pro/Oracle VirtualBox must be installed and configured before you can build these environments.

To bring up a VM or a set of VMs, change directory to respective directory. Make a copy of sample_variables.rb file and save it as variables.rb.  
Edit it according to your need and run following command to bring up the environment.
```
vagrant up
```

Currently available environments.

| Environment | IP Addresses |
| ----------- | ------------ |
| development (Dev VM using Ubuntu 20.04) | 192.168.44.11 |
| Ubuntu 20.4 | 192.168.44.12 |
| Ubuntu 18.4 | 192.168.44.13 |
| CentOS 7 | 192.168.44.14 |
| Rocky Linux 8 (Replacement for CentOS 8) | 192.168.44.15 |
| Ubuntu 22.04 | 192.168.44.16 |
