#!/usr/bin/env ruby
# Creates an Ubuntu 16.04 VM
#   * Run using 'vagrant up'
#   * SSH using vagrant@192.168.10.10, password 'vagrant'

Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-16.04"
    config.vm.network "private_network", ip: "192.168.10.10"
    config.vm.network "forwarded_port", guest: 80, host: 8888
    config.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.customize ["modifyvm", :id, "--cableconnected1", "on"]
    end
     # first,  simulate all updates and if all ok, apply security patches.
     config.vm.provision "system_upgrade",
         type: "shell", :path => "system_upgrade.sh",
         preserve_order: true
     config.vm.provision "Rails bootstrap",
         type: "ansible_local",
         preserve_order: true do |ansible|
         ansible.playbook = "playbook.yml"
         ansible.verbose = "v"
         
    end
end
