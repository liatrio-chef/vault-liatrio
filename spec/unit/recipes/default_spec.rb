#
# Cookbook Name:: liatrio_vault
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'vault-liatrio::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'includes the hashicorp-vault cookbook' do
    expect(chef_run).to include_recipe('hashicorp-vault')
  end

  it 'sets up etc/environment' do
    expect(chef_run).to create_template('etc/environment').with(
      source: 'environment.erb',
      owner: 'root',
      group: 'root',
      mode: '0644'
    )
  end
end
