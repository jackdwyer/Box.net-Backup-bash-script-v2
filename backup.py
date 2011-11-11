import os,shutil
from datetime import datetime

orig = '/home/jack/web_dev/static/location/images/original'
backup = '/home/jack/box.net/jack_servesbeer/images'

diff = set(os.listdir(orig)).difference(set(os.listdir(backup)))
for file in diff:
	shutil.copyfile('%s/%s' % (orig, file), '%s/%s' % (backup, file))

dbDump = '/home/jack/web_dev/dbDUMP'
dbBackup = '/home/jack/box.net/jack_servesbeer/database'
dbBackupName = "dbDump " + datetime.now().__str__() + ".sql"
dbDumpName = 'sqlDump.sql'

shutil.copyfile(('%s/%s' % (dbDump, dbDumpName)), ('%s/%s' % (dbBackup, dbBackupName)))


