class profiles::base {

	include repo
	include cron
	include selinux
	include hosts
	include services
	include hosts_allow
	include remove_mcelog
	include mcollective::server
	include mcoplugins::shell
	include mcoplugins::redis_client
	include env_files 
}

