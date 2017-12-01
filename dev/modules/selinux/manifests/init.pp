class selinux{
    file { "/etc/selinux/config":
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        content => template("selinux/sysconfig_selinux.erb"),
    }
}

