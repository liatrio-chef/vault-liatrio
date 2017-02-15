# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'bento/centos-7.2'

  config.berkshelf.enabled = true
  config.vm.provision 'chef_solo' do |chef|
    chef.add_recipe 'vault-liatrio::default'
  end

  config.vm.network "forwarded_port", guest: 8200, host: 8200


  config.vm.provider :virtualbox do |v|
    v.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    v.customize ['modifyvm', :id, '--cableconnected1', 'on']
    v.customize ['modifyvm', :id, '--cableconnected2', 'on']
  end
end
