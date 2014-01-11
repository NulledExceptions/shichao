#!/bin/bash

# Deploy source code to the remote host
./deploy.sh

# Set `remote_username` and `remote_hostname` from remote.sh
source remote.sh

# Run commands on the remote host
session_name="shichao-an.info"
ssh $remote_username@$remote_hostname "if screen -list | grep -E '\<[0-9]+\.$session_name\>' >/dev/null;
then echo -n ''; else screen -dmS $session_name; fi"
ssh -t $remote_username@$remote_hostname "screen -S $session_name -p 0 -X stuff 'cd shichao-an.info; make html &> post-commit.txt
'
"
