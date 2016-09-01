# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  
  # database
  config.vm.define "db" do |db|
    db.vm.hostname = 'db'
    db.vm.box = "ubuntu/trusty64"

    db.vm.network :private_network, ip: "192.168.56.101"

    db.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "db"]
    end
  end

  # NodeJS Instance 1
  config.vm.define "nodejs" do |nodejs|
    nodejs.vm.box = "ubuntu/trusty64"
    nodejs.vm.hostname = 'nodejs'
    nodejs.vm.provision :shell, :path => "vagrant_provision/bootstrap_nodejs.sh"
    nodejs.vm.network :private_network, ip: "192.168.56.102"

    nodejs.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "nodejs"]
    end
  end

  # NodeJS Instance 2
  config.vm.define "angular2" do |angular2|
    angular2.vm.box = "ubuntu/trusty64"
    angular2.vm.hostname = 'angular2'
    
    angular2.vm.provision :shell, :path =>"vagrant_provision/bootstrap_nodejs.sh"
    angular2.vm.provision :shell, :path =>"vagrant_provision/bootstrap_config_angular2.sh"
    
    angular2.vm.network :private_network, ip: "192.168.56.103"

    angular2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "angular2"]
    end
  end

end