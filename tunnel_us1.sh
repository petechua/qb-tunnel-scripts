#!/bin/bash


SERVICE='us1.petechua.com'

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo -ne "$(date)	US1 Tunnel is running\n" >> /users/mkt/petec/log/tunnel.log
else
	echo -ne "$(date)       US1 Tunnel is not running\n" >> /users/mkt/petec/log/tunnel.log
	/usr/bin/ssh -p 8022 -o "ServerAliveInterval 180" -fN -R 8033:localhost:22 petechua@us1.petechua.com		
fi
