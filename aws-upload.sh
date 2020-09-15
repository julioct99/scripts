#!/bin/bash

SRC=""
DEST="~"
KEY=$(sed '1q;d' ~/scripts/data/aws.txt)
USER=$(sed '2q;d' ~/scripts/data/aws.txt)
HOST=$(sed '3q;d' ~/scripts/data/aws.txt)

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
