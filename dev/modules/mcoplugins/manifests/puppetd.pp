class mcoplugins::puppetd {

    file { '/usr/libexec/mcollective/mcollective/agent/puppetd.rb':
        owner   => root,
        group   => root,
        mode    => 0655,
        source => 'puppet:///modules/mcoplugins/puppetd/agent/puppetd.rb',
        require => Package['mcollective'],

}
    file { '/usr/libexec/mcollective/mcollective/agent/puppetd.ddl':
        owner   => root,
        group   => root,
        mode    => 0655,
        source => 'puppet:///modules/mcoplugins/puppetd/agent/puppetd.ddl',
        require => Package['mcollective'],

}


     file { '/usr/libexec/mcollective/mcollective/application/puppetd.rb':
        owner   => root,
        group   => root,
        mode    => 0655,
        source => 'puppet:///modules/mcoplugins/puppetd/application/puppetd.rb',
        require => Package['mcollective'],

    }
}

