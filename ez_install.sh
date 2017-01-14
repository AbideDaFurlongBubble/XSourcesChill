#!/bin/bash
FNAMES=$(ls -a | sed -n -e '/^\.[^#.].\+[^~]$/ p')
FNAMES_BAK=$(ls -a ~/ | sed -n -e '/^\.[^#.].\+[^~]$/ p')
BAK_DIR=dotz_bak
#Build the backup directory
if [ ! -d ~/$BAK_DIR ]
then
   mkdir ~/$BAK_DIR
fi
#Backup files   
for f in $FNAMES_BAK; do
    cp ~/$f ~/$BAK_DIR
done
#Copy files
for d in $FNAMES; do
    cp $d ~/
done
