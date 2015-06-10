node default {
	#include local_repo
	#include users
	#include git
	#include conf
	include run_stack

## echo "stack ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

## clone epo devstack
# git::clone { 'https://github.com/openstack-dev/devstack.git':
#     path => '/home/stack',
#     dir => 'devstack',
# }

## hak Akses
# file { '/home/stack/':
#     ensure => directory,
# 	recurse => true, # enable recursive directory management
#     owner => 'stack',
#     group => 'stack',
#     mode => 755,
# }

}