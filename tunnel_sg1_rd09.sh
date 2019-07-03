#!/bin/bash


SERVICE='sg1.petechua.com'

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo -ne "$(date)	SG1 Tunnel is running\n" >> /users/mkt/petec/log/tunnel.log
else
	echo -ne "$(date)       SG1 Tunnel is not running\n" >> /users/mkt/petec/log/tunnel.log
	/usr/bin/ssh -p 8022 -o "ServerAliveInterval 180" -fN -R 9033:localhost:22 petechua@sg1.petechua.com		
fi
