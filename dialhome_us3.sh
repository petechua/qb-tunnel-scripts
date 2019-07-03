#!/bin/bash


SERVICE='us3.petechua.com'

if ps ax | grep -v grep | grep $SERVICE | grep "8044" > /dev/null
then
	echo -ne "$(date)	US3 Tunnel(Dialhome) is running\n" >> /users/mkt/petec/log/tunnel.log
else
	echo -ne "$(date)       US3 Tunnel(Dialhome) is not running\n" >> /users/mkt/petec/log/tunnel.log
	/usr/bin/ssh -i /users/mkt/petec/.ssh/id_rsa_il -o "ServerAliveInterval 180" -fN -R 8044:localhost:22 petechua@us3.petechua.com		
fi
