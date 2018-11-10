# Default attributes

# IAAS Server Roles to install
default['cb_vra_iaas']['server_role']['web'] = true
default['cb_vra_iaas']['server_role']['manager'] = true
default['cb_vra_iaas']['server_role']['sql'] = true

# IAAS Service Account
default['cb_vra_iaas']['iaas_svc_account']['name'] = ''
default['cb_vra_iaas']['iaas_svc_account']['password'] = ''
# IIS Features List
default['cb_vra_iaas']['iis_features']['2016'] = %w(Web-Windows-Auth Web-Static-Content Web-Default-Doc Web-Asp-Net Web-Asp-Net45 Web-ISAPI-Ext Web-ISAPI-Filter WAS-Config-APIs WAS-NET-Environment WAS-Process-Model NET-WCF-HTTP-Activation45 NET-HTTP-Activation NET-Non-HTTP-Activ )

# Filebeat Installer attributes
default['cb_vra_iaas']['filebeat']['name'] = 'filebeat-6.3.2-windows-x86_64.zip'
default['cb_vra_iaas']['filebeat']['checksum'] = 'f519f97839a727d0506aa35a0c353a6092733fa5ac0a6a221a86c489d10ce321'
default['cb_vra_iaas']['filebeat']['directory'] = 'C:/Program Files/ElasticStack/filebeat-6.3.2-windows-x86_64'
default['cb_vra_iaas']['filebeat']['source'] = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.3.2-windows-x86_64.zip'
default['cb_vra_iaas']['filebeat']['kibana_host'] = '192.168.1.104'
default['cb_vra_iaas']['filebeat']['kibana_port'] = '5601'
default['cb_vra_iaas']['filebeat']['logstash_host'] = '192.168.1.104'
default['cb_vra_iaas']['filebeat']['logstash_port'] = '5022'

# Temp Java Installer attributes
default['cb_vra_iaas']['java']['name'] = 'Java 8 Update 191 (64-bit)'
default['cb_vra_iaas']['java']['installer'] = 'jre-8u191-windows-x64.exe'
default['cb_vra_iaas']['java']['checksum'] = '605d05442c1640530a8ca2938baafb785560aefa88dc8cd0b43261ef3ecfa4bd'
default['cb_vra_iaas']['java']['version'] = '8.0.1910.12'
default['cb_vra_iaas']['java']['source'] = 'jre-8u191-windows-x64.exe.zip'

# .NET 4.5.2 Installer
default['cb_vra_iaas']['dotnet']['name'] = 'Microsoft .NET Framework 4.5.2'
default['cb_vra_iaas']['dotnet']['installer'] = 'NDP452-KB2901907-x86-x64-AllOS-ENU.exe'
default['cb_vra_iaas']['dotnet']['checksum'] = '6c2c589132e830a185c5f40f82042bee3022e721a216680bd9b3995ba86f3781'
default['cb_vra_iaas']['dotnet']['version'] = '4.5.51650'
default['cb_vra_iaas']['dotnet']['source'] = 'https://download.microsoft.com/download/E/2/1/E21644B5-2DF2-47C2-91BD-63C560427900/NDP452-KB2901907-x86-x64-AllOS-ENU.exe'

# SQL Installer
# default['cb_vra_iaas']['sql2012']['name'] = ''
default['cb_vra_iaas']['sql2012']['installer'] = 'C:/temp/SQLFULL_ENU/setup.exe'
default['cb_vra_iaas']['sql2012']['checksum'] = '573136b37ded5a108d1ef697229768ed26e5430bb6e6f2e56a33d5f235f90b0c'
default['cb_vra_iaas']['sql2012']['options'] = '/Q /IACCEPTSQLSERVERLICENSETERMS /ACTION=install /FEATURES=SQL,Tools /INSTANCENAME=MSSQLSERVER /TCPENABLED=1 /SQLSVCACCOUNT="MyDomain\MyAccount"
/SQLSVCPASSWORD="************" /SQLSYSADMINACCOUNTS="MyDomain\MyAccount "
/AGTSVCACCOUNT="MyDomain\MyAccount" /AGTSVCPASSWORD="************"
/ASSVCACCOUNT="MyDomain\MyAccount" /ASSVCPASSWORD="************"
/RSSVCACCOUNT="MyDomain\MyAccount" /RSSVCPASSWORD="************"
/ISSVCAccount="MyDomain\MyAccount" /ISSVCPASSWORD="************"
/ASSYSADMINACCOUNTS="MyDomain\MyAccount"'
# default['cb_vra_iaas']['sql2012']['version'] = ''
# default['cb_vra_iaas']['sql2012']['source'] = ''

# Java install attributes
# default['java']['jdk_version'] = 8
# default['java']['install_flavor'] = 'windows'
# default['java']['windows']['url'] = 'source'
# default['java']['windows']['package_name'] = 'package name'
# default['java']['windows']['checksum'] = ''
# default['java']['oracle']['accept_oracle_download_terms'] = true
#
# # SQL Server install attributes
# node['sql_server']['accept_eula'] = true
# node['sql_server']['install_dir']
# node['sql_server']['instance_name']
# node['sql_server']['instance_dir']
# node['sql_server']['shared_wow_dir']
# node['sql_server']['agent_account']
# node['sql_server']['agent_startup']
# node['sql_server']['sysadmins']
# node['sql_server']['sql_account']
# node['sql_server']['tcp_enabled']
# node['sql_server']['port']
# node['sql_server']['server']['url']
# node['sql_server']['server']['checksum']
# node['sql_server']['server']['package_name']
