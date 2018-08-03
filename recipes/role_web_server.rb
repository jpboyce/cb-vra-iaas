#
# Cookbook:: cb-vra-iaas
# Recipe:: role_web_server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Install Java and set variables
include_recipe 'cb_vra_iaas::java'

# Install IIS components
include_recipe 'cb_vra_iaas::iis'
