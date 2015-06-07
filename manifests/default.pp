package { "git":
 ensure => installed,
}

file { '/opt':
   ensure => 'link',
   target => '/vagrant',
   force => 'true',
}

## set password
# http://docs.openstack.org/developer/devstack/configuration.html#minimal-configuration