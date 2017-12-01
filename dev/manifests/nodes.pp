node 'mcomaster.norcaltechs.com' {
include profiles::mcomaster
}
node 'tools.norcaltechs.com' {
include profiles::base 
}
node 'amq.norcaltechs.com' {
include profiles::base 
include activemq
}
node 'puppet.norcaltechs.com' {
include profiles::base 
}
node 'spacewalk.norcaltechs.com' {
include profiles::base 
}


