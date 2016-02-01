default['flywaydb']['version'] = '3.2.1'
default['flywaydb']['base_url'] = 'https://bintray.com/artifact/download/business/maven'

case node['platform_family']
when 'debian', 'rhel'
  default['flywaydb']['url'] =
    "#{node['flywaydb']['base_url']}/flyway-commandline-#{node['flywaydb']['version']}-linux-x64.tar.gz"
  default['flywaydb']['install_dir'] = '/opt/flyway'
when 'windows'
  default['flywaydb']['url'] =
    "#{node['flywaydb']['base_url']}/flyway-commandline-#{node['flywaydb']['version']}-windows-x64.zip"
  default['flywaydb']['install_dir'] = "#{ENV['SYSTEMDRIVE']}\\flyway"
end

default['flywaydb']['name'] = 'flyway'
default['flywaydb']['user'] = 'flyway'
default['flywaydb']['group'] = 'flyway'

default['flywaydb']['debug'] = false
default['flywaydb']['sensitive'] = false
default['flywaydb']['quiet'] = false

default['flywaydb']['params'] = {}
default['flywaydb']['conf'] = nil
