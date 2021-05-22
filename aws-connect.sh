#!/bin/bash
# Open an SSH session into a remote machine

if [ $# -eq 1 ]
then
  # <-------------------- VARS ----------------------------------------->

  # File to read key, user and host
  DATAFILE=$1".txt"
  source ~/scripts/data/$DATAFILE

  # <------------------------------------------------------------------>
  ssh -i $KEY_PATH $USER@$HOST
else
  echo "You must provide 1 parameter"
  echo "Use: aws-connect [datafile]"
fi

