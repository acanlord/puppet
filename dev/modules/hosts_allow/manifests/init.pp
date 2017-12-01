class hosts_allow {


file { "/etc/hosts.allow":
    owner  => 'root',
    group  => 'root',
    mode   => '644',
    source => "puppet:///modules/hosts_allow/hosts.allow",
	}
}
