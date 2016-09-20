#!/bin/bash

#Generate a random time for syncing
echo "$(($RANDOM%60)) */2 * * * /mirror_archlinux.sh" > /cron

#add it
crontab /cron

#start services
service cron start
service nginx start

#live forever
tail -f /dev/null

