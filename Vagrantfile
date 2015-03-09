# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider :virtualbox do |v|
    v.memory = 2048
    v.cpus = 1
  end

  config.vm.synced_folder "salt", "/srv/salt/"
  config.vm.synced_folder "salt/pillar", "/srv/pillar"

  config.vm.provision "shell", inline: "apt-get install -y python-git libgit2-0"

  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
  end
end
