#!/bin/sh
# provisioning
vagrant up --no-provision
vagrant provision


# repacking a box
vagrant package --base open_dds --output dds.box 
vagrant box add --name ./dds.box

# clean
vagrant destroy

