#!/bin/bash

python3 ~/python/child.py | sed 's/^.*\(src.*.jpg\"\).*$/\1/;s/src=//g;s/"//g' | awk '{print "https://bugswriter.com/" $0;}' >> images.txt

wget -P ~/python/photos -i images.txt
