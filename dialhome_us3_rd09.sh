#!/bin/bash


SERVICE='us3.petechua.com'

if ps ax | grep -v grep | grep $SERVICE | grep "9044" > /dev/null
then
	echo -ne "$(date)	US3 Tunnel(Dialhome_rd09) is running\n" >> /users/mkt/petec/log/tunnel.log
else
	echo -ne "$(date)       US3 Tunnel(Dialhome_rd09) is not running\n" >> /users/mkt/petec/log/tunnel.log
	/usr/bin/ssh -i /users/mkt/petec/.ssh/id_rsa_il -o "ServerAliveInterval 180" -fN -R 9044:localhost:22 petechua@us3.petechua.com		
fi
