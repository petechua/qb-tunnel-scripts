#!/bin/bash
sshpid=( `/bin/ps -ef | grep ssh |grep petechua | awk '{print $2}' `)
for t in "${sshpid[@]}"
do
#echo $t
/bin/kill -9 $t
echo -ne "$(date)	Killing SSH Tunnel($t)\n" >> /users/mkt/petec/log/tunnel.log
done
#echo "Read file content!"
