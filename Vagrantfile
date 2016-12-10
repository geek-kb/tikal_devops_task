# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.ssh.insert_key = false
  config.vm.synced_folder "./", "/tmp/project",create: true
  config.vm.network :forwarded_port, guest: 80, host: 80 , auto_correct: true

  config.vm.provider :virtualbox do |v|
	# Name of machine
    v.name = "default"
	# Machine memory
    v.memory = 1024
	# Number of cpu's
    v.cpus = 2
	# This option makes the NAT engine use the host's resolver mechanisms to handle DNS requests
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
	# Enabling the I/O APIC is required for 64-bit guest operating systems; it is also required if you want to use more than one virtual CPU in a virtual machine.
    v.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.provision "ansible" do |ansible|
	# Sets the playbook to use when machine is up'ed
    ansible.playbook = "deploy/main.yml"
  end

end
