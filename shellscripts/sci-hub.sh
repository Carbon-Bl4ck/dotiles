#!/bin/bash

if [ $# -eq 0 ]; then
	paper=$( pbpaste ) #sed -e "s/\(.*\)/'|1'/")
else
	paper=$1
fi

PDF=$(curl 'https://sci-hub.st/'$paper'' | pup 'a attr{onclick}' | grep -Eo "//.*true\b" | awk '{print "https:" $0;}')
#echo $PDF
open $PDF
