#!/bin/bash

for m in $(pidof -x "wallpaper.sh"); 
do 
  if [[ $m != $$ ]]; then 
    $(kill -9 $m)
  fi
done;
[ "$#" -lt "1" ] || [ "$#" -gt "2" ] && {  echo -e "ERROR : args number invalid \n $0 speed /path/name.gif" ; echo "try add 0.010" ; exit 1 ; }
dir=~/Wallpaper
speed=$1
name=$2

hash=`md5sum $name | cut -f1 -d" "`

if [ -d "$dir/$hash" ]; then

 while : ; do for i in ` ls $dir/$hash -v ` ; do feh --bg-fill $dir/$hash/$i ; sleep $speed ; done ; done    

else
[[ ! -d $dir ]] && mkdir $dir 
[[ ! -d $dir/$hash ]] && { mkdir $dir/$hash ; echo "spliting .." ; convert -coalesce $name $dir/$hash/$hash.png ; echo ok ; }
while : ; do for i in ` ls $dir/$hash -v ` ; do feh --bg-fill $dir/$hash/$i ; sleep $speed ; done ; done    

fi
