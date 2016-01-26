# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.require_version ">= 1.5"

Vagrant.configure(2) do |config|
  config.vm.define "meeseeks"

  config.vm.provider "virtualbox" do |v|
    v.name = "meeseeks"
    v.memory = 8192
    v.cpus = 2
  end

  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = ">= 20151007.0.0"

  config.vm.hostname = "meeseeks"

  config.vm.network "public_network", auto_config: false, mac: "080027d6ec72"
  config.vm.network "private_network", ip: "172.28.128.101"

  config.ssh.shell = "bash"
  config.ssh.forward_x11 = true
  config.ssh.forward_agent = true

  config.vm.synced_folder "./work", "/work", type: "nfs", create: true, mount_options: ['rw', 'vers=3', 'tcp', 'actimeo=2', 'fsc', 'local_lock=flock']

  config.vm.provision "timezone",   type: "shell", path: "provision/10-timezone.sh"
  config.vm.provision "networking", type: "shell", path: "provision/20-networking.sh"
  config.vm.provision "dev",        type: "shell", path: "provision/30-packages-base.sh"
  config.vm.provision "docker",     type: "shell", path: "provision/31-packages-docker.sh"
  config.vm.provision "hub",        type: "shell", path: "provision/32-packages-hub.sh"
  config.vm.provision "opam",       type: "shell", path: "provision/33-packages-opam.sh"
  config.vm.provision "user",       type: "shell", path: "provision/70-xs-user.sh"
  config.vm.provision "nis",        type: "shell", path: "provision/71-xs-nis.sh"
  config.vm.provision "automount",  type: "shell", path: "provision/72-xs-automount.sh"
  config.vm.provision "opam-init",  type: "shell", path: "provision/73-opam-init.sh"
  config.vm.provision "dotfiles",   type: "shell", path: "provision/90-dotfiles.sh"
end
