#!/bin/bash
# Upload a folder from local environment to a remote machine

# <-------------------- VARS ----------------------------------------->

# File to read key, user and host
DATAFILE=$1".txt"
source ~/scripts/data/$DATAFILE

# Path to the source and destination folders in the local machine
# Dont touch, value will be overwritten by script args
SRC=""
DEST="~"

# <------------------------------------------------------------------>

if [ $# -ge 1 -a $# -lt 4 ]
then
  if [ $# -eq 3 ]
  then 
    DEST=$3
  fi
  SRC=$2
      
  rsync -av -progress -e \
    "ssh -i "$KEY_PATH \
    $SRC \
    $USER@$HOST:$DEST
else
  echo "You must provide 1 or 2 parameters"
  echo "Use: aws-upload datafile src_path [dest_path?]"
fi
