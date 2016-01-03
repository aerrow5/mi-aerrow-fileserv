log "force correct ownership of /data directory"

# chown -R dsapid:dsapid /data

log "starting samba"

/usr/sbin/svcadm enable samba
