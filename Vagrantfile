# -*- mode: ruby -*-
# vim: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "ha-1" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname="ha-1"
    subconfig.vm.network "forwarded_port", guest: 8888, host: 8882
    subconfig.vm.network :private_network, ip: "192.168.10.14"
    subconfig.vm.provision "shell", inline: <<-SHELL
    sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
    systemctl restart sshd
    SHELL
  end

  config.vm.define "ha-2" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname="ha-2"
	  subconfig.vm.network "forwarded_port", guest: 8888, host: 8881
    subconfig.vm.network :private_network, ip: "192.168.10.15"
    subconfig.vm.provision "shell", inline: <<-SHELL
    sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
    systemctl restart sshd
    SHELL
  end

  config.vm.define "vm-1" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname="vm-1"
    subconfig.vm.network :private_network, ip: "192.168.10.10"
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    subconfig.vm.provision "shell", inline: <<-SHELL
    sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
    systemctl restart sshd
    SHELL
  end

  config.vm.define "vm-2" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname="vm-2"
    subconfig.vm.network :private_network, ip: "192.168.10.11"
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    subconfig.vm.provision "shell", inline: <<-SHELL
    sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
    systemctl restart sshd
    SHELL
  end

  config.vm.define "vm-3" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname="vm-3"
    subconfig.vm.network :private_network, ip: "192.168.10.12"
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    subconfig.vm.provision "shell", inline: <<-SHELL
    sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
    systemctl restart sshd
    SHELL
  end

  config.vm.define "vm-4" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname="vm-4"
    subconfig.vm.network :private_network, ip: "192.168.10.13"
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    subconfig.vm.provision "shell", inline: <<-SHELL
    sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
    systemctl restart sshd
    SHELL
  end

end
