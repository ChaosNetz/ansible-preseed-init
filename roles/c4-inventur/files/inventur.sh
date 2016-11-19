#!/bin/bash
export LC_ALL=C

curl -X POST --cacert /usr/share/ca-certificates/CAcert/root.crt -F "lshw=`lshw -json`" "https://icvpn1.chaosnetz.org:8989/pxe/lshw/$(hostname)"
