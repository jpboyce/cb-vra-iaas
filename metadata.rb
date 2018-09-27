name              'cb_vra_iaas'
maintainer        'Jesse Boyce'
maintainer_email  'jesse@jpboyce.org'
license           'MIT'
description       'Installs/Configures cb_vra_iaas'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '0.1.0'
supports          'windows'
depends           'windows'
source_url        'https://github.com/jpboyce/cb_vra_iaas'
issues_url        'https://github.com/jpboyce/cb_vra_iaas/issues'
chef_version      '>= 12.1' if respond_to?(:chef_version)

# Added for java install
# depends 'java', '~> 2.1.0'
# Added for MSSQL install
# depends 'sql_server', '~> 5.5.0'
