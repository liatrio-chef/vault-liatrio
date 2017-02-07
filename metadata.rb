name 'vault-liatrio'
maintainer 'Justin Bankes'
maintainer_email 'Justin@liatrio.com'
license 'all_rights'
description 'Installs/Configures vault server'
long_description 'Installs/Configures liatrio_vault'
version '0.1.1'

issues_url 'https://github.com/liatrio-chef/vault-liatrio/issues' if respond_to?(:issues_url)
source_url 'https://github.com/liatrio-chef/vault-liatrio' if respond_to?(:source_url)

depends 'hashicorp-vault'
