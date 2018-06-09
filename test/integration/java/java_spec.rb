# Inspec test for recipe cb-vra-iaas::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

control 'Java' do
  impact 0.7
  title 'Java Checks'
  desc 'Check if Java is installed, the right version, that JAVA_HOME is set and the java.exe exists'

  # http://inspec.io/docs/reference/resources/package/
  describe package('Java') do
    it { should be_installed }
    its('version') { should eq '1.8'}
  end

  # http://inspec.io/docs/reference/resources/os_env/
  describe os_env('JAVA_HOME') do
    its('content') { should_not eq 'value' }
  end

  # http://inspec.io/docs/reference/resources/file/
  describe file('%JAVA_HOME%\bin\java.exe') do
    it { should exist }
  end
end
