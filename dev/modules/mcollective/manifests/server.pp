class mcollective::server {
    
    $activemq_server = "amq.norcaltechs.com"
    $activemq_mcollective_password = "just4now"
    $redis_host="mcomaster"
    $redis_port="6379"


    file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs":
    owner => root,
    group => root,
    mode => 0444,
    source => "puppet:///modules/mcollective/RPM-GPG-KEY-puppetlabs"
}

    if ($mcostatus == 0){
        exec { "import_puppet_gpg":
            command=> "/bin/rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs",
    }
}

    package { 'mcollective':
        ensure => latest,
        install_options => ['--nogpgcheck'],
        before => Service['mcollective']
}
    package { 'mcollective-service-agent':
        ensure => latest,
        install_options => ['--nogpgcheck'],
        before => Service['mcollective']
}
    package { 'mcollective-puppet-agent':
        ensure => latest,
        install_options => ['--nogpgcheck'],
        before => Service['mcollective']
}
    service { 'mcollective':
        ensure => running,
        enable => true
}
    package { 'mcollective-facter-facts':
        ensure => latest
}
    package { 'mcollective-package-agent':
        ensure => latest
}
    package { 'mcollective-filemgr-agent':
        ensure => latest
}



        file { '/etc/mcollective/clients':
        ensure  => 'directory',
        recurse => 'true',
        owner   => 'root',
        group   => 'root',
        mode    => '755',
        purge    => 'true',
        source  => 'puppet:///modules/mcollective/clients',
}

    file { '/etc/mcollective/facts.yaml':
        owner    => 'root',
        group    => 'root',
        mode     => '0400',
        replace  => 'false',
        loglevel => debug, # reduce noise in Puppet reports
        content  => inline_template("<%= scope.to_hash.reject { |k,v| k.to_s =~ /(uptime_seconds|timestamp|free)/ }.to_yaml %>"), # exclude rapidly changing facts
}
    file { '/etc/mcollective/server.cfg':
        owner   => root,
        group   => root,
        mode    => 0400,
        content => template('mcollective/server.cfg.erb'),
        notify  => Service["mcollective"]
    }

}



