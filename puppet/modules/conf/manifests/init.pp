## copy local.conf
class conf {
	file { '/home/stack/devstack/local.conf':
		source => '/vagrant/puppet/modules/conf/files/local.conf',
		ensure => present,
		owner => 'stack',
		group => 'stack',
		mode => 755,
	}
}