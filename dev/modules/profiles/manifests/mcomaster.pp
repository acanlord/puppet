class profiles::mcomaster {


	include repo
	include cron
	include selinux
	include hosts
	include services
	include hosts_allow
	include remove_mcelog
	include mcollective::server
	include mcollective::client
	include mcoplugins::shell
	include mcoplugins::redis_server
}
