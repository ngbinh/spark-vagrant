#!/bin/sh

#
# From: https://github.com/aglover/ubuntu-equip/blob/master/equip_base.sh
# Ubuntu Equip 
# Licence: MIT
# 
sudo apt-get update -y

sudo apt-get install build-essential rsync telnet tmux man wget -yvag
#sudo apt-get install strace tcpdump -y
#sudo apt-get install libssl-dev zlib1g-dev libcurl3-dev libxslt-dev -y
#sudo apt-get install python-software-properties -y
