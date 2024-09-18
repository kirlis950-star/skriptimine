#!/bin/bash
#skript, mis kontrollib, kas see on fail, link või kataloog
#kontrollib praegust
failid=0
kataloogid=0
linkid=0

 for i in `ls -l`
 do
   if test -f $i; then
     echo $i: fail
     failid=$((failid + 1))
 elif test -L $i; then
     echo $i: link
     linkid=$((linkid + 1))
 elif test -d $i; then
     echo $i: kataloog
     kataloogid=$((kataloogid + 1))
 fi
 done

# Väljastame kokkuvõtte failide, kataloogide ja linkide arvust.
echo "Kokku on $failid faili, $kataloogid kataloogi ja $linkid linki."
