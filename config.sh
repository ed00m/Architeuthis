#! /bin/sh
#
# Created by kevin MET
# modified by
#   Alejandro
#   ed00m:th3d00m <pabloze@gmail.com>
 
 './configure' \
 '--prefix=/opt/squid3/squid-3.4.3' \
 '--enable-ssl' \
 '--enable-ssl-crtd' \
 '--with-openssl' \
 '--disable-eui' \
 '--disable-snmp' \
 '--disable-wccp' \
 '--disable-wccpv2' \
 '--disable-http-violations' \
 '--disable-translation' \
 '--disable-auto-locale' \
 '--disable-htcp' \
 '--disable-internal-dns' \
 '--with-default-user=proxy' \
 '--enable-disk-io' \
 '--enable-storeio=ufs,aufs,diskd,rock' \
 '--enable-icmp' \
 '--enable-follow-x-forwarded-for' \
 '--enable-removal-policies=heap,lru' \
 '--enable-delay-pools' \
 '--with-logdir=/var/log/squid/' \
 '--with-pidfile=/var/run/squid.pid' \
 '--with-filedescriptors=8192' \
 "$@"
