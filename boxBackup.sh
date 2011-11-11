#!/bin/bash
# JACK DWYER
# 10 November 2011
#--------------------
#backup script using web dav mounted box.net drive
#--------------------

#global variables
orig='//home/jack/web_dev/static/location/images/original'
backupImages='/home/jack/box.net/jack_servesbeer/images'
#They are not used here, but should be passed ot python script

#Database shit
password=a
user=root
dbDump=("/home/jack/web_dev/dbDUMP/sqlDump.sql")
dbDestination=("/home/jack/box.net/mysqlbackup")
dbDumpCommand="mysqldump -u ${user} -p${password} --all-databases" 

#first check webdav mount of my box.net is up
grep -q box.net /etc/mtab
if [ $? -eq 1 ]; then
	mount ~/box.net
fi

#now do db dump
$dbDumpCommand > $dbDump

#run the image backup
#TODO pass params to python script of directory locations


python backup.py






