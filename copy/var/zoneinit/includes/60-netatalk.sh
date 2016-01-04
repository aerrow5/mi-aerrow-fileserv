log "creating database"

mkdir -p /var/db/netatalk/CNID

log "starting netatalk"

/usr/sbin/svcadm enable netatalk
