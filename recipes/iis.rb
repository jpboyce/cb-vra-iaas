#
# Cookbook:: cb-vra-iaas
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'chef/win32/version'
windows_version = Chef::ReservedNames::Win32::Version.new

if windows_version.windows_server_2012_r2?
  # Install the IIS roles as defined for Windows 2012R2
  windows_feature_powershell node['cb_vra_iaas']['iis_features']['2012r2'] do
    feature_name node['cb_vra_iaas']['iis_features']['2012r2']
    action :install
  end
end

# Disable Anonymous Authentication
powershell_script 'DisableAnonymousAuthentication' do
  code <<-EOH
  Set-WebConfigurationProperty -Filter /system.webServer/security/authentication/anonymousAuthentication -Name enabled -Value $false  -PSPath 'IIS:\'
  EOH
  guard_interpreter :powershell_script
  only_if '(Get-WebConfigurationProperty -filter /system.webServer/security/authentication/anonymousAuthentication -name enabled -PSPath "IIS:\" ).Value'
end

# Enable Windows Authentication
powershell_script 'EnableWindowsAuthentication' do
  code <<-EOH
  Set-WebConfigurationProperty -Filter /system.webServer/security/authentication/windowsAuthentication -Name enabled -Value $true  -PSPath 'IIS:\'
  EOH
  guard_interpreter :powershell_script
  not_if '(Get-WebConfigurationProperty -filter /system.webServer/security/authentication/windowsAuthentication -name enabled -PSPath "IIS:\" ).Value'
end
