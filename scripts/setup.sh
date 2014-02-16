#!/bin/bash

<%= import 'scripts/vagrant-shell-scripts/ubuntu.sh' %>
<%= import 'scripts/vagrant-shell-scripts/ubuntu-extras.sh' %>

# }}}

# Use Google Public DNS for resolving domain names.
# The default is host-only DNS which may not be installed.
nameservers-local-purge
# nameservers-append '8.8.8.8'
# nameservers-append '8.8.4.4'

# Update packages cache.
apt-packages-update

# Install VM packages.
apt-packages-install \
  rsync \
  telnet \
  wget \
  git \
  curl

oracle-jdk-install "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com" "http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz"

