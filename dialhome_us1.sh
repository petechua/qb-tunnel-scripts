#!/bin/bash


SERVICE='us1.petechua.com'

if ps ax | grep -v grep | grep $SERVICE | grep "8044" > /dev/null
then
	echo -ne "$(date)	US1 Tunnel(Dialhome) is running\n" >> /users/mkt/petec/log/tunnel.log
else
	echo -ne "$(date)       US1 Tunnel(Dialhome) is not running\n" >> /users/mkt/petec/log/tunnel.log
	/usr/bin/ssh -p 8022 -o "ServerAliveInterval 180" -fN -R 8044:localhost:22 petechua@us1.petechua.com		
fi
