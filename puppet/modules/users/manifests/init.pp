class users {
	user { 'stack':
	    ensure => 'present',
	    groups => ['sudo'],
	    home => '/home/stack',
	    managehome => true,
	    #test
	    password => '$6$lY2Gp3Cr$zNrUB7T3yibUF/gWn5cTQ0fNv7MUmx/DZuw3E7I..Vh9tITG28BtgvXJPU4Gm4Z/9oNvlbX24KzQ9Ib1QH1B9.',
	    shell => '/bin/bash',
	}
}