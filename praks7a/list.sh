#!/bin/bash
#skript, mis kontrollib, kas see on fail, link või kataloog
#kontrollib praegust
 for i in `ls -l`
 do
   if test -f $i; then
     echo $i: fail
 elif test -L $i; then
     echo $i: link
 elif test -d $i; then
     echo $i: kataloog
 fi
 done
