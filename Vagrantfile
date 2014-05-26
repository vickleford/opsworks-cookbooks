# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ci-ubuntu-12.04"

  config.vm.define "web" do |web|
    web.vm.network :private_network, ip: "192.168.34.10"

    web.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "."
      chef.run_list = []
    end
  end

  config.vm.define "reldb" do |db|
    db.vm.network :private_network, ip: "192.168.35.10"

    db.vm.provision :chef_solo do |chef|
      # chef.cookbooks_path = "./"
      chef.run_list = ["custom_database::setup"]
    end
  end

end