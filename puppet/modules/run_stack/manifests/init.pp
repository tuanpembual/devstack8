## run stack from devstack folder
class run_stack {
	exec { "install":
		#cwd => "/home/stack/devstack",
    	command => "-C dir, --directory=/home/stack/devstack /bin/sh stack.sh",
    	#path => "/home/stack/devstack",
    	user => stack,
	}
}