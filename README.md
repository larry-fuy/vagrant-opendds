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
You could build your base Vagrant box and then provision and install OpenDDS instead of downloading existed box (yongfu/opendds) from Vagrant public repo (vagrantcloud.com). 

1. If you decide to build the base box from scratch, the major steps include to create and configure a Windows VirtualBox VM according to Vagrant base box requirement (https://docs.vagrantup.com/v2/boxes/base.html). Please see the links [1](http://tallmaris.com/using-vagrant-with-chocolatey-and-puppet-to-spin-up-virtual-machines/) and [2](http://tallmaris.com/vagrant-with-windows-support/) for details. Due to the bugs in Microsoft Powershell, you have to install Chocolatey (http://chocolatey.org) in this base box to let Vagrant provision successfully. After creation of the base box, you can distribute it by uploading it to Vagrant public repo or just use it directly.
2. You can also download a Windows 7 box from Vagrant public repo to save time and efforts to configure the vanilla virtual box. For example,
```
vagrant init lmayorga1980/windows7-sp1
vagrant up
```
and then install Chocolatey (Lauching VirtualBox Manager. Save the running VM and restart it to access GUI). After this you could get the base box for OpenDDS by repackaging the downloaded box. 
```
vagrant box package --base NAME-OF-VM --name NAME-OF-BOX 
```
```NAEM-OF-VM``` is the name of VM shown in VirtualBox Manager.






