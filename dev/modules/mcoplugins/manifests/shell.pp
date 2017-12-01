class mcoplugins::shell {


	exec { "mkdir-mcoapplication":
		command     => "/bin/mkdir -p  /usr/libexec/mcollective/mcollective/application",
		creates     => "/usr/libexec/mcollective/mcollective/application",
}

        file { '/usr/libexec/mcollective/mcollective/agent/shell.ddl':
		owner   => root,
		group   => root,
		mode    => 0655,
		source => 'puppet:///modules/mcoplugins/mcollective-shell-agent/agent/shell.ddl',
		require => Package['mcollective'],

}

    file { '/usr/libexec/mcollective/mcollective/agent/shell.rb':
		owner   => root,
		group   => root,
		mode    => 0655,
		source => 'puppet:///modules/mcoplugins/mcollective-shell-agent/agent/shell.rb',
		require => Package['mcollective'],

}

     file { '/usr/libexec/mcollective/mcollective/application/shell.rb':
		owner   => root,
		group   => root,
		mode    => 0655,
		source => 'puppet:///modules/mcoplugins/mcollective-shell-agent/application/shell.rb',
		require => Package['mcollective'],

    }
}

