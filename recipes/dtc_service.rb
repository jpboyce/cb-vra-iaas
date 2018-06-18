#
# Cookbook:: cb-vra-iaas
# Recipe:: dtc_service
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Enable the Microsoft Distributed Transaction Coordinator service
windows_service 'MSDTC' do
  action :enable
  startup_type :automatic
end
