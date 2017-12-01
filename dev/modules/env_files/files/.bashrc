# .bashrc

# User specific aliases and functions

export EDITOR=vi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias gc='git commit'
alias gp='git push'

# Puppet vars
alias restart='service puppetmaster restart'
alias validate='puppet parser validate'
alias dev='cd /etc/puppet/environments/dev'
alias manifests='cd /etc/puppet/environments/dev/manifests'
alias modules='cd /etc/puppet/environments/dev/modules'
alias git='/opt/git/git'
alias environments='/etc/puppet/environments'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
