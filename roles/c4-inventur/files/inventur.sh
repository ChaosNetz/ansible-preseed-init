#!/bin/bash
export LC_ALL=C

fn="`date +%s`"
lshw -json > /tmp/$fn
sn="`python2 /usr/local/bin/serial.py /tmp/$fn`"
mv /tmp/$fn /tmp/$sn-$fn
curl -F "lshw=@/tmp/$sn-$fn" https://icvpn1.chaosnetz.org:8989/pxe/lshw/$(echo -ne `hostname`)

