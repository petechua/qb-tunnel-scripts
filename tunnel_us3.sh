#!/bin/bash


SERVICE='us3.petechua.com'

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo -ne "$(date)	US3 Tunnel is running\n" >> /users/mkt/petec/log/tunnel.log
else
	echo -ne "$(date)       US3 Tunnel is not running\n" >> /users/mkt/petec/log/tunnel.log
	/usr/bin/ssh -i /users/mkt/petec/.ssh/id_rsa_il -o "ServerAliveInterval 180" -fN -R 8033:localhost:22 petechua@us3.petechua.com		
fi
