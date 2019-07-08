#!/bin/bash


RSYNC=/usr/bin/rsync

#MIRROR=rsync://mirrors.uk2.net/archlinux/
MIRROR=rsync://mirror.de.leaseweb.net/archlinux/
#MIRROR=rsync://ftp5.gwdg.de/pub/linux/archlinux/
#MIRROR=rsync://rsync.gtlib.gatech.edu/archlinux/
#MIRROR=rsync://mirror.rit.edu/archlinux/

OPTIONS=-"rtlvH --delete-after --delay-updates --safe-links --max-delete=3000"


pushd /mnt/mirror

while true; do
	$RSYNC $OPTIONS $MIRROR ./ > /dev/null
	date > __last_sync
	sleep 2h
done


