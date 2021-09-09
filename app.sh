#!/bin/bash
namedpipe=/var/log/pipe/applog.pipe

rm -f $namedpipe && mkfifo $namedpipe

while :
do
	echo "current date is `date`" > /var/log/pipe/applog.pipe
	sleep 1
done