#
# Cookbook:: cb-vra-iaas
# Recipe:: filebeat
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Get zip file from source location
remote_file ::File.join(Chef::Config[:file_cache_path], (node['cb_vra_iaas']['filebeat']['name'])) do
  source node['cb_vra_iaas']['filebeat']['source']
  path ::File.join(Chef::Config[:file_cache_path], ::File.basename(node['cb_vra_iaas']['filebeat']['source']))
  action :create_if_missing
end

# Create directory for files
directory node['cb_vra_iaas']['filebeat']['directory'] do
  recursive true
  action :create
end

# Unzip the files
windows_zipfile node['cb_vra_iaas']['filebeat']['directory'] do
  source ::File.join(Chef::Config[:file_cache_path], ::File.basename(node['cb_vra_iaas']['filebeat']['source']))
  checksum node['cb_vra_iaas']['filebeat']['checksum']
  path "#{ENV['ProgramFiles']}/ElasticStack"
  action :unzip
end

# Copy over template file
template "#{node['cb_vra_iaas']['filebeat']['directory']}/filebeat.yml" do
  source 'filebeat.yml.erb'
  action :create
end

# Install the service
# powershell_script 'Install FileBeat Service' do
#  code <<-EOH
#  #{node['cb_vra_iaas']['filebeat']['directory']}/install-service-filebeat.ps1
#  EOH
# end
