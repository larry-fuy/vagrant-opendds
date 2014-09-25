#!/bin/sh
# provisioning
vagrant up

# repacking a box
vagrant package --base open_dds --output dds.box 
vagrant box add -f --name dds ./dds.box

# clean
vagrant destroy

