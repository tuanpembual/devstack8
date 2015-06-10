class git {
	include git::install
}
define git::clone ( $path, $dir){
    exec { "clone-$name-$path":
        command => "/usr/bin/git clone $name $path/$dir",
        creates => "$path/$dir",
        require => [Class["git"], File[$path]],
    }
}

#https://github.com/tuanpembual/00Mesin.git
#git@github.com:tuanpembual/00Mesin.git


## Install git
class git::install{
	exec { "apt-get update":
		path => "/usr/bin",
	}

	package { "git":
		ensure  => present,
		require => Exec["apt-get update"],
	}
}