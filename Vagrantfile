# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
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
      chef.cookbooks_path = "./"
      chef.data_bags_path = "custom_database/data_bags"
      chef.json = {
        "mysql" => {
          "server_root_password" => "ohmygodzilla"
        }
      }
      chef.run_list = ["chef-solo-search", "apt", "custom_database::setup"]
    end
  end

end