class mcollective::client {


    package { 'mcollective-client':
        ensure => latest
}
    package { 'mcollective-puppet-client':
        ensure => latest
}
    package { 'mcollective-service-client':
        ensure => latest
}
#    package { 'mcollective-facter-facts':
#        ensure => latest
#}
    package { 'mcollective-package-client':
        ensure => latest 
}
      package { 'mcollective-filemgr-client':
        ensure => latest
}

    file { '/etc/mcollective/client.cfg':
        owner   => root,
        group   => root,
        mode    => 0400,
        #mode    => 0644, #Kermit needs 644
        content => template('mcollective/client.cfg.erb'),
}
    file { '/var/lib/puppet/ssl/certs/mcollective-servers.pem':
        owner   => root,
        group   => root,
        mode    => 0400,
        source  =>'puppet:///modules/mcollective/mcollective-servers.pem',

    }
}
