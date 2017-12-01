class remove_mcelog {

if ($is_virtual == "true"){

package { "mcelog":
  ensure => "absent",
  	}
}
}
