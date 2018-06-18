
require 'chef/win32/version'
windows_version = Chef::ReservedNames::Win32::Version.new

if windows_version.windows_server_2016?
  windows_feature_powershell node['cb_vra_iaas']['iis_features']['2016'] do
    feature_name node['cb_vra_iaas']['iis_features']['2016']
    action :install
  end
end
