#
# Cookbook:: hostfile_chef
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

template '/etc/hosts' do
  source 'hosts.erb'
  path '/etc/hosts'
  mode 211
  owner 'root'
  group 'root'
  variables(
      :entries => node['hostfile']['host_entry']
  )
  action :create
end

service 'network' do
  action :restart
end
