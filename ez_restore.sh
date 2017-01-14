#!/bin/bash
BAK_DIR=dotz_bak
FNAMES_BAK=$(ls -a ~/$BAK_DIR | sed -n -e '/^\.[^#.].\+[^~]$/ p')

#Restore from backup directory
if [ -d ~/$BAK_DIR ]
then
   #Backup files   
   for f in $FNAMES_BAK; do
       cp -f ~/$BAK_DIR/$f ~/
   done
else
    #Dunno
    echo 'No backup directory.'
    exit 1
fi
   
exit $?
