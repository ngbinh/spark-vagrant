#!/bin/bash

# By default, the current host directory will be mapped to /vagrant in the boxes
bash -x /vagrant/scripts/install_base.sh
bash -x /vagrant/scripts/install_jdk7.sh
