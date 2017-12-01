class env_files {

	file { "/root/.vim/":
    source => "puppet:///modules/env_files/vim",
    owner  => 'root',
    group  => 'root',
    recurse   => 'true',
    purge   => 'false',
}

  file { "/root/.vimrc/":
    source => "puppet:///modules/env_files/.vimrc",
    owner  => 'root',
    group  => 'root',
    mode   => '644',
    }

  file { "/root/.bashrc/":
    source => "puppet:///modules/env_files/.bashrc",
    owner  => 'root',
    group  => 'root',
    mode  => '644',

  }
}
