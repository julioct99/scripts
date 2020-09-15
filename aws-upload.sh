#!/bin/bash
# Upload a folder from local environment to a remote machine

# <-------------------- VARS ----------------------------------------->

# Path to the source folder in the local machine
SRC=""

# Path to the destination folder in the remote machine
DEST="~"

# Path to the ssh key
KEY=$(sed '1q;d' ~/scripts/data/aws.txt)

# User at the remote machine
USER=$(sed '2q;d' ~/scripts/data/aws.txt)

# Host at the remote machine
HOST=$(sed '3q;d' ~/scripts/data/aws.txt)

# <------------------------------------------------------------------>

if [ $# -ge 1 -a $# -lt 3 ]
then
  if [ $# -eq 2 ]
  then 
    DEST=$2
  fi
  SRC=$1
      
  rsync -av -progress -e \
    "ssh -i "$KEY \
    $SRC \
    $USER@$HOST:$DEST
else
  echo "You must provide 1 or 2 parameters"
  echo "Use: upload src_path [dest_path]"
fi
