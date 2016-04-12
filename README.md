# CentOS 7 cluster via Vagrant

This repo provides a template Vagrantfile to create a CentOS 7 cluster using the VirtualBox software hypervisor.
After setup is complete you will have a five CentOS virtual machines running on your local machine. Please be aware that the standard memory per instance is set to 1536 MB, and the cpu to 1.
That means by default you'll need a machine capable to free up to 5 cpus and 7680 MB memory.

## Streamlined setup

1) Install dependencies

* [VirtualBox][virtualbox] 4.3.10 or greater.
* [Vagrant][vagrant] 1.6 or greater.

2) Clone this project and get it running!

```
git clone https://github.com/mesoshq/vagrant-cluster-centos/
cd vagrant-cluster-centos
```

3) Startup and SSH

The VirtualBox provider is the default Vagrant provider. Use this if you are unsure.

```
vagrant up
vagrant ssh centos-01
```

**Description:**

`vagrant up` triggers Vagrant to download the `centos/7` box (if necessary) and (re)launch the instances

`vagrant ssh <hostname>` connects you to the virtual machine. The hostnames are centos-01 to centos-05, the IPs are from 172.17.11.101 to 172.17.11.105.

Configuration is stored in the directory so you can always return to this machine by executing vagrant ssh from the directory where the Vagrantfile was located.

[virtualbox]: https://www.virtualbox.org/
[vagrant]: https://www.vagrantup.com/downloads.html
