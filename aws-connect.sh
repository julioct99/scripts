#!/bin/bash
# Open an SSH session into a remote machine

# <-------------------- VARS ----------------------------------------->

# File to read key, user and host
DATAFILE="aws.txt"

# Path to the ssh key
KEY=$(sed '1q;d' ~/scripts/data/$DATAFILE)

# User at the remote machine
USER=$(sed '2q;d' ~/scripts/data/$DATAFILE)

# Host at the remote machine
HOST=$(sed '3q;d' ~/scripts/data/$DATAFILE)

# <------------------------------------------------------------------>

ssh -i $KEY $USER@$HOST