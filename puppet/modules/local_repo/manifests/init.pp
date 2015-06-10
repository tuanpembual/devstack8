## copy sources.list
class local_repo {
	exec { "delete":
    	command => "/bin/rm -rf /etc/apt/sources.list",
	}

	file { '/etc/apt/sources.list':
		source => '/vagrant/puppet/modules/local_repo/sources.list',
		ensure => present,
		force => 'true',
	}
}