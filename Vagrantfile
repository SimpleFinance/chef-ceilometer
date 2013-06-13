#!/usr/bin/env ruby

Vagrant.configure('2') do |config|
  config.vm.hostname = 'ceilometer'
  config.vm.box = ENV['VAGRANT_BOX'] || 'opscode-ubuntu-12.04'
  config.vm.box_url = ENV['VAGRANT_BOX_URL'] || "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      'recipe[ceilometer::default]'
    ]
  end
end
