# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  #config.vm.provision "puppet" do |puppet|
  #  puppet.manifests_path = "puppet/manifests"
  #  puppet.manifest_file  = "site.pp"
  #  puppet.module_path   = "puppet/modules"
  #end

  #config.vm.network "public_network", ip: "10.0.0.22"
  #config.vm.network "private_network", ip: "10.0.1.11"
  #config.vm.network :forwarded_port, guest: 80, host: 8080
  #config.vm.network :forwarded_port, guest: 5000, host: 5000
  #config.vm.network :forwarded_port, guest: 9696, host: 9696
  #config.vm.network :forwarded_port, guest: 9292, host: 9292
  #config.vm.network :forwarded_port, guest: 8774, host: 8774
  #config.vm.network :forwarded_port, guest: 35357, host: 35357
  
  config.vm.provider :virtualbox do |vb|
    #ram size
    vb.customize ["modifyvm", :id, "--memory", "8192"]
    #cpu core
    vb.customize ["modifyvm", :id, "--cpus", 2]
  end
end