#!/bin/bash


SERVICE='jp1.petechua.com'

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo -ne "$(date)	JP1 Tunnel is running\n" >> /users/mkt/petec/log/tunnel.log
else
	echo -ne "$(date)       JP1 Tunnel is not running\n" >> /users/mkt/petec/log/tunnel.log
	/usr/bin/ssh -i /users/mkt/petec/.ssh/id_rsa_il -o "ServerAliveInterval 180" -fN -R 8033:localhost:22 petechua@jp1.petechua.com		
fi
