#!/bin/bash
# Open an SSH session into a remote machine

# <-------------------- VARS ----------------------------------------->

# Path to the ssh key
KEY=$(sed '1q;d' ~/scripts/data/aws.txt)

# User at the remote machine
USER=$(sed '2q;d' ~/scripts/data/aws.txt)

# Host at the remote machine
HOST=$(sed '3q;d' ~/scripts/data/aws.txt)

# <------------------------------------------------------------------>

ssh -i $KEY $USER@$HOST