#!/bin/bash

MAC=$(ip link show 2> /dev/null | tail -n 1 |  egrep -oi 'ether ([a-f0-9]{2}:){5}[a-f0-9]{2}' | cut --delimiter=' ' -f2 | tr ':' '-')
generated_hostname=$(curl -sL "https://icvpn1.chaosnetz.org:8989/pxe/hostname/${MAC}")
if [ -z $generated_hostname ]; then
  generated_hostname="chaosnetz"
fi
echo $generated_hostname

