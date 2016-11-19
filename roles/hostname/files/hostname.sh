#!/bin/bash

MAC=$(ip link show 2> /dev/null | tail -n 1 |  egrep -oi 'ether ([a-f0-9]{2}:){5}[a-f0-9]{2}' | cut --delimiter=' ' -f2 | tr ':' '-')
#HOSTNAME=`curl --cacert /usr/share/ca-certificates/CAcert/root.crt -sLi "https://icvpn1.chaosnetz.org:8989/pxe/hostname/${MAC}" 2> /dev/zero | tail -n1`
curl --cacert /usr/share/ca-certificates/CAcert/root.crt -sLi "https://icvpn1.chaosnetz.org:8989/pxe/hostname/${MAC}" | tail -n1
#rm -f /etc/hostname && touch /etc/hostname && echo "$HOSTNAME" >> /etc/hostname
#/etc/init.d/hostname.sh

