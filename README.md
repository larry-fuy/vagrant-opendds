vagrant-opendds
===============

OpenDDS (opendds.org) in a Windows 7 Vagrant box (VirtualBox)

Install
===============
```
git clone https://github.com/larry-fuy/vagrant-opendds
cd vagrant-opendds
vagrant up
```

Build base box
=================
You could build your base Vagrant box and then provision and install OpenDDS instead of downloading existed box (yongfu/opendds) from Vagrant public repo (vagrantcloud.com). The major steps include to create a Windows VirtualBox VM according to Vagrant base box requirement (https://docs.vagrantup.com/v2/boxes/base.html). Please see the links [1](http://tallmaris.com/using-vagrant-with-chocolatey-and-puppet-to-spin-up-virtual-machines/) and [2](http://tallmaris.com/vagrant-with-windows-support/) indetails.

Due to the bugs in Microsoft Powershell, you may need to install Chocolatey (chocolatey.org) in this base box to let Vagrant provision successfully. 




