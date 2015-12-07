class wintermute {
	require ::apt

	# Xonotic - playdeb repo
	apt::source { 'playdeb':
		location => 'http://archive.getdeb.net/ubuntu',
		release  => 'wily-getdeb',
		repos    => 'games',
		key      => {
			id     => '1958A549614CE21CFC27F4BAA8A515F046D7E7CF',
			source => 'http://archive.getdeb.net/getdeb-archive.key',
		}
	}
	package { 'xonotic':
		ensure  => 'latest',
		require => Apt::Source['playdeb']
	}

	# Install Steam - HLDS
	include steam::hlds
	# Install Steam - steamcmd
	include steam::steamcmd
	# Install Open VM Tools
	include ::openvmtools
}

include wintermute
