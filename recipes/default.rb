#
# Cookbook Name:: liatrio_vault
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'hashicorp-vault'

template '/etc/environment' do
  source 'environment.erb'
  owner 'root'
  group 'root'
  mode '0644'
end
