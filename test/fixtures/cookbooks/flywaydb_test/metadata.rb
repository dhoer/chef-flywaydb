name 'flywaydb_test'
version '0.1.0'

depends 'flywaydb'

depends 'apt', '~> 2.0'
depends 'mysql', '~> 6.0' # travis has mysql issue: https://github.com/chef-cookbooks/mysql/issues/368
