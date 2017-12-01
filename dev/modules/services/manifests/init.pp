class services {

service { "crond":
ensure => "running",
enable => "true",
    }
service { "sendmail":
ensure => "stopped",
enable => "false",
}
service { "iptables":
enable => "false",
ensure => "stopped",
        }

}
