class mcoplugins::redis_server {


	exec { "mkdir-mcodiscovery":
    	command     => "/bin/mkdir -p /usr/libexec/mcollective/mcollective/discovery",
    	creates     => "/usr/libexec/mcollective/mcollective/discovery",
      }

    file { '/usr/libexec/mcollective/mcollective/registration/meta.rb':
        source => 'puppet:///modules/mcoplugins/redis/meta.rb',
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        #require => Class["mcollective::server"],
  }
    file { '/usr/libexec/mcollective/mcollective/agent/registration.rb':
        source => 'puppet:///modules/mcoplugins/redis/registration.rb',
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        #require => Class["mcollective::server"],

}

    file { '/usr/libexec/mcollective/mcollective/discovery/redisdiscovery.rb':
        source => 'puppet:///modules/mcoplugins/redis/redisdiscovery.rb',
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        #require => Class["mcollective::server"],
}

    file { '/usr/libexec/mcollective/mcollective/discovery/redisdiscovery.ddl':
        source => 'puppet:///modules/mcoplugins/redis/redisdiscovery.ddl',
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        #require => Class["mcollective::server"],
    }
}
