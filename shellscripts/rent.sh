#!/bin/bash

for page in $(eval echo {$1..$2}) 
do wget -P ~/rent-a-g/chapter_$page $(curl 'https://rentagirlfriend.online/manga/rent-a-girlfriend-chapter-'$page'/' | pup 'img' | grep -Eo "https://.*(jpg)\b") 
done 
      	
terminal-notifier -message 'Download ready!' -sound 'default'

mplayer -novideo ~/shellscripts/soundeffects/Anime.mp4 > /dev/null 2>&1
