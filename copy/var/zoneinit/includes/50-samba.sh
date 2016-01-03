log "force correct ownership of /data directory"

# chown -R dsapid:dsapid /data

log "starting samba"

/usr/sbin/svcadm enable samba:nmbd
/usr/sbin/svcadm enable samba:smbd
/usr/sbin/svcadm enable dns/multicast
