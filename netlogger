#!/bin/bash
#Dnevnik o zbiranju porabe podatkov se zbira na en mesec
dir=$(date +"%b-%Y")
#nethogs je program za spremljanje omrežne aktivnosti po procesih oz. programih
nethogs -d 60 -t eno1 &>> /var/log/netlogger/$dir.log
#-d 60: izpisuje vsake 60 sekund, da zmanjša velikost dnevnika 
#-v 3: tretji način prikaza oz. prikaz v MB
#-t: tracemode oz. način za parse-anje podatkov
#eno1: kateri omrežni vmesnik naj spremlja
#&>>: preusmeri stdout in stderr in append-a v datoteko
