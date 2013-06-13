default[:ceilometer][:user] = 'ceilometer'
default[:ceilometer][:root] = '/opt/ceilometer'
default[:ceilometer][:revision] = 'master'
default[:ceilometer][:repo] = 'https://github.com/SimpleFinance/ceilometer.git'
default[:ceilometer][:env] = {
  'HOST' => 'localhost',
  'TCP_PORT' => '2003'
}
