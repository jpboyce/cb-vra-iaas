# IaaS SQL Server Host
#   - Cannot use default SQL Server 2016 130 compatibility mode.  use 100 or 120 compatibility mode
#   - AlwaysOn Availability Group (AAG) is only supported with SQL Server 2016 Enterprise
#  - Java bits as above
#  - Install a supported SQL version (for vRA 7.3.x: 2012, 2012 SP2/3/4, 2014, 2014 SP1/2, 2016.  No express versions)
#  - Enable TCP/IP protocol for SQL Server
#  - identify accounts and add permissions in SQL

#
# Cookbook:: cb-vra-iaas
# Recipe:: role_sql_server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Install Java and set variables
include_recipe 'cb_vra_iaas::java'
