class repo{

    if ($operatingsystemmajrelease == "6"){

        file { "/etc/yum.repos.d/puppet.repo":
            owner  => 'root',
            group  => 'root',
            mode   => '644',
            source => "puppet:///modules/repo/puppet.repo",
} 
        file { "/etc/yum.repos.d/kermit.repo":
            owner  => 'root',
            group  => 'root',
            mode   => '644',
            source => "puppet:///modules/repo/kermit.repo",
} 

}


    elsif ($operatingsystemmajrelease == "5"){


        file { "/etc/yum.repos.d/puppet.repo":
            owner  => 'root',
            group  => 'root',
            mode   => '644',
            source => "puppet:///modules/repo/puppet.repo",
}
        file { "/etc/yum.repos.d/kermit.repo":
            owner  => 'root',
            group  => 'root',
            mode   => '644',
            source => "puppet:///modules/repo/kermit.repo",
}



}

    elsif ($architecture == "i386"){


	
        file { "/etc/yum.repos.d/puppet.repo":
            owner  => 'root',
            group  => 'root',
            mode   => '644',
            source => "puppet:///modules/repo/puppet.repo",
}
        file { "/etc/yum.repos.d/kermit.repo":
            owner  => 'root',
            group  => 'root',
            mode   => '644',
            source => "puppet:///modules/repo/kermit.repo",
}


        tidy { "/etc/yum.repos.d":
            recurse => 1,
            matches => [ "*.repo.[0-9]", "*.repo.old", "*.old" ]
	}
}
}
