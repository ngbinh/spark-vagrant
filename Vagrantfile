# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.4.2"

DOMAIN = 'local'

BOX = 'precise64'
BOX_URL = 'http://files.vagrantup.com/precise64.box'

NODES = [
  { :host => 'spark1', :ip => '192.168.2.10', :cpu => 1, :ram => '2048' },
  { :host => 'spark2', :ip => '192.168.2.11', :cpu => 1, :ram => '2048' }
]

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  NODES.each do | node |
    config.vm.define node[:host] do | node_config |
      node_config.vm.box = BOX
      node_config.vm.box_url = BOX_URL

      node_config.vm.hostname = node[:host] + "." + DOMAIN
      node_config.vm.network :private_network, ip: node[:ip]

      # by default, the current folder is shared as /vagrant in the nodes
      # you can also share an outside folder here
      # node_config.vm.synced_folder "shared", "/shared"

      memory = node[:ram] ? node[:ram] : 1024
      cpu = node[:cpu] ? node[:cpu] : 1

      node_config.vm.provider :virtualbox do | vbox |
        vbox.gui = false
        vbox.customize ['modifyvm', :id, '--memory', memory.to_s]
        vbox.customize ['modifyvm', :id, '--cpus', cpu.to_s]
      end

      node_config.vm.provision :shell do | shell |
        shell.path = 'scripts/setup.sh'
      end
    end
  end
end