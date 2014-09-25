vagrant-opendds
===============

OpenDDS (opendds.org) in a Windows 7 Vagrant box (VirtualBox)

Install
----------
```
git clone https://github.com/larry-fuy/vagrant-opendds
cd vagrant-opendds
```
Run the box
```
vagrant up
```
Note before run the box, you mayneed build the base box first, see belowing.


Build base box
--------------
You could build your base Vagrant box and then provision and install OpenDDS instead of downloading existed box (yongfu/opendds) from Vagrant public repo (vagrantcloud.com). 

1. If you decide to build the base box from scratch, the major steps include to create and configure a Windows VirtualBox VM according to Vagrant base box requirement (https://docs.vagrantup.com/v2/boxes/base.html). Please see the links [1](http://tallmaris.com/using-vagrant-with-chocolatey-and-puppet-to-spin-up-virtual-machines/), [2](http://tallmaris.com/vagrant-with-windows-support/) and [3](http://williamwalker.me/blog/creating-a-custom-vagrant-box.html) for details. ~~Due to the bugs in Microsoft Powershell, you have to install Chocolatey (http://chocolatey.org) in this base box to let Vagrant provision successfully.~~ After creation of the base box, you can distribute it by uploading it to Vagrant public repo or just use it directly.
2. You can also download a Windows 7 box from Vagrant public repo to save time and efforts on configuring the vanilla virtual box as shown in this Vagrantfile.
```

Provision by Chocolatey
-----------------------
The required softwares (SVN, VC++,...) are installed by Chocolatey (http://chocolatey.org) which is a "apt/yum" like package manager for Windows. The package for Chocolatey is easy to develop only if you know something about powershell. For a quick start to build a package for Chocolatey, please see [A Simple Tutorial: Create and Publish Chocolatey Packages](http://www.topbug.net/blog/2012/07/02/a-simple-tutorial-create-and-publish-chocolatey-packages/) or my VC++ express 2010 package (https://github.com/larry-fuy/Chocolatey-Packages).




