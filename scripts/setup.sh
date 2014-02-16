#!/bin/bash

<%= import 'scripts/vagrant-shell-scripts/ubuntu.sh' %>

# }}}

# Use Google Public DNS for resolving domain names.
# The default is host-only DNS which may not be installed.
nameservers-local-purge
nameservers-append '8.8.8.8'
nameservers-append '8.8.4.4'

# Update packages cache.
apt-packages-update

# Install VM packages.
apt-packages-install \
  rsync \
  telnet \
  wget \
  git \
  curl

<%= import 'scripts/install_jdk7.sh' %>

env-append 'JAVA_HOME' "/opt/java7/"
env-append 'PATH' "/opt/java7/bin/"

