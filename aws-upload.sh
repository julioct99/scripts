#!/bin/bash

SRC=""
DEST="~"
KEY="ssh -i ~/.ssh/julio_docker_test.pem"
USER="ubuntu"
HOST="18.224.27.200"

if [ $# -ge 1 -a $# -lt 3 ]
then
	if [ $# -eq 2 ]
	then 
		DEST=$2
	fi
	SRC=$1

	rsync -av -progress -e \
		"ssh -i ~/.ssh/julio_docker_test.pem" \
		$SRC \
		$USER@$HOST:$DEST
else
	echo "You must provide 1 or 2 parameters"
	echo "Use: upload src_path [dest_path]"
fi
