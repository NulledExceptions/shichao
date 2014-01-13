#!/bin/bash

# Deploy source code to the remote host
./deploy.sh

# Set `remote_username` and `remote_hostname` from remote.sh
source remote.sh

# Run commands on the remote host
# Force build HTML files using `sphinx-build`
logfile="post-commit.log"
projectdir="shichao-an.info"
ssh -t $remote_username@$remote_hostname \
"cd $projectdir; sphinx-build -a -b html -d build/doctrees source build/html &>> $logfile"
