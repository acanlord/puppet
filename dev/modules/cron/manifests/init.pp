class cron {

cron { 'puppet-agent':
  ensure  => 'present',
  command => '/usr/bin/puppet agent --onetime --no-daemonize --splay',
  minute  => ['30'],
  target  => 'root',
  user    => 'root',
	}
}

#cron { 'export-facter':
#  ensure  => 'present',
#  command => 'root /tmp/facterlib.sh',
#  minute  => ['1'],
#  target  => 'root',
#  user    => 'root',
#	}
#}
