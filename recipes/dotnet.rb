#
# Cookbook:: cb-vra-iaas
# Recipe:: dotnet
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Install .NET 4.5.2 if not present
# By default, the installer will attempt to automatically reboot and will cause Chef to error out.
# To handle this, the recipe supresses the reboot and then notifies a reboot resource

# Extract out the release version of .NET so we can check it against the minimum required version (394802)
# 379893 = 4.5.2
# 393297 = 4.6
# 394802 = 4.6.2
key_path = 'HKLM\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full'
subkey_array = registry_get_values(key_path, :x86_64)
reg_key_hash = subkey_array.at(-1)
release_data = reg_key_hash.values_at(:data)
release_version = release_data[0].to_i

# Reboot if installer runs
reboot 'DotNet452Install' do
  action :nothing
end

# Run installer
windows_package node['cb_vra_iaas']['dotnet']['name'] do
  checksum node['cb_vra_iaas']['dotnet']['checksum']
  installer_type :custom
  options '/q /norestart'
  source node['cb_vra_iaas']['dotnet']['source']
  version node['cb_vra_iaas']['dotnet']['version']
  action :install
  only_if { release_version < 379893 }
  notifies :reboot_now, 'reboot[DotNet452Install]', :immediately
end
