#!/bin/bash

# Deploy source code to the remote host
./deploy.sh

# Set `remote_username` and `remote_hostname` from remote.sh
source remote.sh

# Run commands on the remote host
logfile="post-commit.log"
projectdir="shichao-an.info"
ssh -t $remote_username@$remote_hostname "cd $projectdir; make html &>> $logfile"
