# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "meeseeks"
  #config.vm.network "public_network"
  config.vm.network :forwarded_port, guest: 22, host: 12345, id: 'ssh'

  config.vm.provision "shell", path: "provision/10-timezone.sh", name: "timezone"
  config.vm.provision "shell", path: "provision/30-packages-base.sh", name: "base-packages"
  config.vm.provision "shell", path: "provision/31-packages-docker.sh", name: "docker"
  config.vm.provision "shell", path: "provision/32-packages-hub.sh", name: "hub"
  config.vm.provision "shell", path: "provision/70-xs-user.sh", name: "user"
  config.vm.provision "shell", path: "provision/71-xs-nis.sh", name: "nis"
  config.vm.provision "shell", path: "provision/72-xs-automount.sh", name: "automount"
  config.vm.provision "shell", path: "provision/90-dotfiles.sh", name: "dotfiles"
  #config.vm.provision "shell", path: "provision/99-cleanup.sh", name: "cleanup"
end
