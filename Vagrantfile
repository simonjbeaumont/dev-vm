# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "meeseeks"
  config.vm.network "public_network", auto_config: false, mac: "080027d6ec72"
  config.vm.network "private_network", ip: "172.28.128.101"

  config.vm.provider "virtualbox" do |v|
    v.name = "meeseeks"
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.provision "shell", path: "provision/10-timezone.sh", name: "timezone"
  config.vm.provision "shell", path: "provision/20-networking.sh", name: "networking"
  config.vm.provision "shell", path: "provision/30-packages-base.sh", name: "base-packages"
  config.vm.provision "shell", path: "provision/31-packages-docker.sh", name: "docker"
  config.vm.provision "shell", path: "provision/32-packages-hub.sh", name: "hub"
  config.vm.provision "shell", path: "provision/33-packages-opam.sh", name: "opam"
  config.vm.provision "shell", path: "provision/70-xs-user.sh", name: "user"
  config.vm.provision "shell", path: "provision/71-xs-nis.sh", name: "nis"
  config.vm.provision "shell", path: "provision/72-xs-automount.sh", name: "automount"
  config.vm.provision "shell", path: "provision/73-opam-init.sh", name: "opam-init"
  config.vm.provision "shell", path: "provision/90-dotfiles.sh", name: "dotfiles"

  config.vm.synced_folder "./work", "/work", type: "nfs", create: true
end
