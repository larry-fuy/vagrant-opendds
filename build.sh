#!/bin/sh

error() {
    echo "$@" 1>&2
}

fail() {
    error "$@" && exit 1
}

print_usage() {
    printf "Usage: build [autobuild | configure]\n"
    printf "Build Vagrant box to run OpenDDS\n"
}

if [ $# -eq 0 ]; then
	cp install_opendds_configure.bat install_opendds.bat
else if [ $# -eq 1 ]; then 
	cp install_opendds_autobuild.bat install_opendds.bat
	sed -i 's/dds_build/$1/g' install_opendds.bat
else 
    print_usage
    exit 1;
fi

# provisioning
vagrant up

# repacking a box
vagrant package --base open_dds --output dds.box 
vagrant box add -f --name dds ./dds.box

# clean
vagrant destroy

