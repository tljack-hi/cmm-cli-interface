#!/usr/bin/env python
# 
# usage: python3 get-masternode-winners.py
# 
# Get the list of winner masternodes
# 

import subprocess
import json
import sys


command = "./commercium-cli getmasternodewinners"

response = subprocess.check_output(command, shell=True, universal_newlines=True)
data = json.loads( response )

i = 0
while ( i < len(data) ):
		# NOTE: "winner" can be a list (one item) or an array (multiple list)
	if ( not isinstance (data[i]["winner"], list) ):
		if ( data[i]["winner"]["address"] != "Unknown" ):
			print ( data[i]["winner"]["address"] )
	else:
		j = 0
			# NOTE: losers are prepended with a space - so ignore that one.
		while ( j < len(data[i]["winner"]) ):
			if ( data[i]["winner"][j]["address"][0] != " " ):
				print ( data[i]["winner"][j]["address"] )
			j += 1
	i += 1
