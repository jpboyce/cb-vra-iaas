#
# Cookbook:: cb-vra-iaas
# Recipe:: java
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Get installer onto node
temp_installer = Chef::Config[:file_cache_path] + '\\' + node['cb_vra_iaas']['java']['installer']
cookbook_file temp_installer do
  source node['cb_vra_iaas']['java']['source']
  action :create
end

# Run installer
package node['cb_vra_iaas']['java']['name'] do
  checksum node['cb_vra_iaas']['java']['checksum']
  installer_type :custom
  options "INSTALL_SILENT=Enable REBOOT=Disable SPONSORS=Disable /L %TEMP%\\JavaInstall.log"
  source temp_installer
  version node['cb_vra_iaas']['java']['version']
  action :install
end

# Set environment variable
windows_env 'JAVA_HOME' do
  value 'C:\Program Files\Java\jre1.8.0_171'
end
