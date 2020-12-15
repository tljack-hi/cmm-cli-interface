#!/usr/bin/env python
# 
# usage: python3 get-masternode-list.py
# 
# List all ENABLED masternodes
# 

import subprocess
import json
import sys

command = "./commercium-cli masternode list"

response = subprocess.check_output(command, shell=True, universal_newlines=True)
data = json.loads( response )

i = 0
while ( i < len(data) ):
	if ( data[i]["status"] == "ENABLED" ):
		print ( data[i]["addr"] )
	i += 1
