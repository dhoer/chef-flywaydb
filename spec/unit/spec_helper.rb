# Encoding: utf-8

require 'chefspec'
require 'chefspec/berkshelf'

ChefSpec::Coverage.start!

::LOG_LEVEL = :error

::CHEFSPEC_OPTS = {
  log_level: ::LOG_LEVEL,
}.freeze

VERSION = '6.0.0-beta'.freeze
MYSQL_VERSION = '5.1.43'.freeze
