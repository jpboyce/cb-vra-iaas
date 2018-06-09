# Inspec test for recipe cb-vra-iaas::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# vRA 7.3 supports: 2012, 2012 SP2/3/4, 2014, 2014 SP1/2, 2016
# vRA 7.4 supports: 2012, 2012 SP2/3/4, 2014, 2014 SP1/2, 2016, 2017

# http://inspec.io/docs/reference/resources/package/
describe package('Microsoft SQL Server') do
  it { should be_installed }
  its('version') { should be '1.2.3' }
end


# Check ports
# http://inspec.io/docs/reference/resources/port/
describe port(1433) do
  it { should be_listening }
  its('protocols') { should include('tcp') }
  its('processes') { should include('mssqlserver') } # could this be tightened up to 'should be'?
  its('addresses') { should include '0.0.0.0' }
end

# Check MSSQL Permissions for user
sql = mssql_session(user: 'user', password: 'password')
# Not supplying a username and password will test Windows authentication
query = "SELECT * FROM BLAH"
describe sql.query(query).row(0).column('result') do
  its('value') { should eq '' }
end
