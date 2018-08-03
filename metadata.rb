name 'cb_vra_iaas'
maintainer 'Jesse Boyce'
maintainer_email 'jesse@jpboyce.org'
license 'All Rights Reserved'
description 'Installs/Configures cb_vra_iaas'
long_description 'Installs/Configures cb_vra_iaas'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/jpboyce/cb_vra_iaas/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/jpboyce/cb_vra_iaas'

supports 'windows'

# Added for java install
#depends 'java', '~> 2.1.0'
# Added for MSSQL install
#depends 'sql_server', '~> 5.5.0'
