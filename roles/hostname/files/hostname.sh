#!/bin/bash

MAC=$(ip addr show eth0  | egrep -oi 'ether ([a-f0-9]{2}:){5}[a-f0-9]{2}' | cut --delimiter=' ' -f2 | tr ':' '-')
HOSTNAME=`curl -sLi "http://127.0.0.1:8989/pxe/hostname/${MAC}" 2> /dev/zero | tail -n1`
rm -f /etc/hostname && touch /etc/hostname && echo "$HOSTNAME" >> /etc/hostname
