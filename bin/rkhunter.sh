#!/bin/sh
/usr/local/bin/rkhunter --update --nocolors
/usr/local/bin/rkhunter --propupd --nocolors
#/usr/local/bin/rkhunter -c --sk --disable apps,suspscan,deleted_files --rwo
if [ -t 0 ]; then
	/usr/local/bin/rkhunter -c --sk --rwo --nocolors
else
	/usr/local/bin/rkhunter -c --sk
fi
