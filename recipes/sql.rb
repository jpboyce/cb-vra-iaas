#
# Cookbook:: cb-vra-iaas
# Recipe:: sql
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Install SQL 2012
package 'SQL 2012' do
  installer_type :custom
  source node['cb_vra_iaas']['sql2012']['installer']
  action :install
end
