#!/bin/sh
if [ $1 == "autobuild" ]; then
	cp install_opendds_autobuild.bat install_opendds.bat
else
	cp install_opendds_configure.bat install_opendds.bat
fi

# provisioning
vagrant up

# repacking a box
vagrant package --base open_dds --output dds.box 
vagrant box add -f --name dds ./dds.box

# clean
vagrant destroy

