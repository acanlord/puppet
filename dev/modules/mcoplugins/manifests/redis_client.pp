class mcoplugins::redis_client {

    exec { "mkdir-registration":
    command     => "/bin/mkdir -p /usr/libexec/mcollective/mcollective/registration",
    creates     => "/usr/libexec/mcollective/mcollective/registration",
      }

    file { '/usr/libexec/mcollective/mcollective/registration/meta.rb':
        source => 'puppet:///modules/mcoplugins/redis/meta.rb',
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        #require => Class["mcollective::server"],
    }
  }
