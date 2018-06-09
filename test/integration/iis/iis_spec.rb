# Inspec test for recipe cb-vra-iaas::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# http://inspec.io/docs/reference/resources/windows_feature/
describe windows_feature('feature_name') do
  it { should_not be_installed }
end



# Check ports
# http://inspec.io/docs/reference/resources/port/
describe port(80) do
  it { should be_listening }
  its('protocols') { should include('tcp') }
end
