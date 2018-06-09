# Inspec test for recipe cb-vra-iaas::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# vRA 7.3 supports: Windows 2008 R2, 2012, 2012 R2 and 2016
# vRA 7.4 supports: Windows 2008 R2, 2012, 2012 R2 and 2016

# IAAS server should be WIndows
describe os[:family] do
  it { should eq 'windows' }
end

# OS Name
describe os[:name] do
  it { should eq 'windows' }
end

# OS Version
describe os[:release] do
  it { should eq '1.2.3' }
end


# Powershell
# vRA 7.3 supports: 2.0, 4.0, 5.0 and 5.1
# vRA 7.4 supports: 4.0, 5.0 and 5.1
# Add Powershell tests here
# http://inspec.io/docs/reference/resources/powershell/
script = <<-EOH
  $PSVersionTable.PSVersion.Major
EOH

describe powershell(script) do
  its('stdout') { should_not eq '1' }
  its('stderr') { should eq '' }
  its('exit_status') { should eq '0' }
  # add a matcher to check versions
end
# Static IP Check


# Disk check?
describe filesystem('c:/') do
  its('size') { should be >= 123 }
end

# FQDN Check
# http://inspec.io/docs/reference/resources/host/
describe host('vraiaas.contoso.local') do
  it { should be_resolvable}
  its('ipaddress') { should include '12.34.56.78'}
end

# Logon As A Service check
# http://inspec.io/docs/reference/resources/security_policy/
describe security_policy do
  its('SeServiceLogonRight') { should include 'iaasSID' }
end

# DTC Service check
