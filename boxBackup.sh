#!/bin/bash
# JACK DWYER
# 10 November 2011
#--------------------
#backup script using web dav mounted box.net drive
#--------------------


#some global variables that will be needed
$backup
images=(`ls original`)
backup=(`ls backup`)

lenImages=${#images[*]}
lenBackup=${#backup[*]}

#check if the image backup folder is empty, as then we just dump all images in
if [ $lenBackup == 0 ]; then
	echo "backup folder is empty"
fi



for (( i=0; i<=$(( $lenImages - 1 )); i++ ))
do
	for (( j=0; j<=$(( $lenBackup -1 )); j++ ))
	do
		if [ ${backup[$j]} == ${images[$i]} ]; then
			echo "is in the directory ${images[$i]}"
		else
			echo "${images[$i]}"
			echo "was not in the backup directory"
		fi
	done
done

