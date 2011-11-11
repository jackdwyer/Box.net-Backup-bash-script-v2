import os,shutil

orig = 'original'
backup = 'backup'

diff = set(os.listdir(orig)).difference(set(os.listdir(backup)))
for file in diff:
	shutil.copy2('%s/%s' % (orig, file), '%s/%s' % (backup, file))

