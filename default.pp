##user stack
user { 'stack':
    ensure => 'present',
    groups => ['sudo',''],
    home => '/home/stack',
    managehome => true,
    #test
    password => '$6$lY2Gp3Cr$zNrUB7T3yibUF/gWn5cTQ0fNv7MUmx/DZuw3E7I..Vh9tITG28BtgvXJPU4Gm4Z/9oNvlbX24KzQ9Ib1QH1B9.',
    shell => '/bin/bash',
}



exec { "delete":
    command => "/bin/rm -rf /etc/apt/sources.list",
    creates => "/tmp/needed/directory"
}


## copy sources.list
class local_repo {
	file { '/etc/apt/sources.list':
		source => 'puppet:///modules/local_repo/sources.list',
		ensure => present,
		force => 'true',
	}
}

package { "git":
	#ensure => installed,
	ensure  => present,
	require => Exec["apt-get update"],
}

#file { '/opt':
#   ensure => 'link',
#   target => '/vagrant',
#   force => 'true',
#}

## set password
# http://docs.openstack.org/developer/devstack/configuration.html#minimal-configuration