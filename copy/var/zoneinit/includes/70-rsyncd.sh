#!/bin/bash

log "add rsync user"
useradd -g fileserv rsync

# startup daemon:
svcadm enable svc:/pkgsrc/rsyncd:default
