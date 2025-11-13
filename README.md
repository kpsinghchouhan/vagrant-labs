# Vagrant Lab Environments

This repository contains lab environments which can be built using Vagrant and VMware Workstation Pro/Oracle VirtualBox.

Both Vagrant and VMware Workstation Pro/Oracle VirtualBox must be installed and configured before you can build these environments.

To bring up a VM or a set of VMs, change directory to respective directory. Make a copy of sample_variables.rb file and save it as variables.rb.  
Edit it according to your need and run following command to bring up the environment.
```
vagrant up
```

Currently available environments.

### Single VM Environments

| Environment | Box | IP Address |
| ----------- | --- | ------------ |
| devbox | bento/ubuntu-24.04 | 192.168.44.11 |
| ubuntu2204-sandbox | bento/ubuntu-22.04 | 192.168.44.21 |
| ubuntu2404-sandbox | bento/ubuntu-24.04 | 192.168.44.22 |
| rockylinux9-sandbox | bento/rockylinux-9 | 192.168.44.23 |
| rockylinux10-sandbox | bento/rockylinux-10 | 192.168.44.24 |
| docker-sandbox | bento/ubuntu-24.04 | 192.168.44.25 |

### Multi-VM Environments

For multi-VM environments, `vagrant up` will create all the VMs listed in the table. You can also bring up a specific VM by running `vagrant up <hostname>`.

#### Ansible Lab

| Hostname | Box | IP Address |
| -------- | --- | ------------ |
| ansible-control-server | bento/rockylinux-10 | 192.168.44.31 |
| ansible-host-01 | bento/rockylinux-10 | 192.168.44.32 |
| ansible-host-02 | bento/ubuntu-24.04 | 192.168.44.33 |

#### Kubernetes (k8s) Lab

| Hostname | Box | IP Address |
| -------- | --- | ------------ |
| k8s-server | bento/ubuntu-24.04 | 192.168.44.41 |
| k8s-node-0 | bento/ubuntu-24.04 | 192.168.44.42 |
| k8s-node-1 | bento/ubuntu-24.04 | 192.168.44.43 |

#### Puppet Enterprise (PE) Lab

| Hostname | Box | IP Address |
| -------- | --- | ------------ |
| pe-server | bento/ubuntu-24.04 | 192.168.44.51 |
| pe-host-01 | bento/ubuntu-24.04 | 192.168.44.52 |
| pe-host-02 | bento/rockylinux-10 | 192.168.44.53 |