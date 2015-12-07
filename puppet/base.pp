class wintermute {
	require ::apt

	# Xonotic - playdeb repo
	apt::key { 'playdeb':
		source => http://archive.getdeb.net/getdeb-archive.key,
	}

	apt::source { 'playdeb':
		location => 'http://archive.getdeb.net/ubuntu',
		release  => 'wily-getdeb',
		repos    => 'main',
		require  => Apt::Key['playdeb'],
	}

	package { 'xonotic':
		ensure => 'latest'
	}

	include steam::hlds
	include steam::steamcmd
}