node default {
	#include users
	include git

## 2. Ganti Sources List
#file {'sourcelist':
#    path => '/etc/apt/sources.list',
#    ensure => present,
#    source => '/vagrant/puppet/modules/local_repo/sources.list',
#}

# git::clone { 'https://github.com/tuanpembual/04webkplijogja.git':
#     path => '/home/stack',
#     dir => 'devstack',
#}

}