#!/bin/bash
#skript, mis kontrollib, kas see on fail, link või kataloog
echo -n "sisesta kataloogi nimi: "

failid=0
kataloogid=0
linkid=0


read kataloog

 for i in "$kataloog"/*
 do
   if test -f $i; then
     echo $i: fail
     failid=$((failid + 1))
 elif test -L $i; then
     echo $i: link
     kataloogid=$((kataloogid + 1))
 elif test -d $i; then
     echo $i: kataloog
     linkid=$((linkid + 1))
 fi
 done

echo "Kokku on $failid faili, $kataloogid kataloogi ja $linkid linki."
