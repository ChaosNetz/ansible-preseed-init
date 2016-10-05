#!/usr/bin/env python2
from json import loads
from sys import argv

if __name__ == '__main__':
    with open(argv[1]) as f:
        j = loads(f.read())
    print j["serial"]
