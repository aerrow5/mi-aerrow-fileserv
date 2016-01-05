#!/bin/bash
# manual script converted into bash shell:

log "download source-code"

pushd /tmp
wget http://sourceforge.net/projects/netatalk/files/netatalk/3.1.7/netatalk-3.1.7.tar.gz

log "unpack source-code"

tar xfvz netatalk-3.1.7.tar.gz

log "compile source-code"

cd netatalk-3.1.7
./configure --with-ssl-dir=/opt/local --with-libevent-header=/opt/local --with-libevent-lib=/opt/local --with-libgcrypt --with-bdb=/opt/local --with-init-style=solaris --with-init-dir=/var/svc/manifest/network/ --without-pam --prefix=/opt/local
ln -s /opt/local/lib /opt/local/lib/64
make && make install

popd

svcadm enable svc:/network/dns/multicast:default
svcadm enable svc:/network/netatalk:default
