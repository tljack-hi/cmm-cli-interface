#!/usr/bin/env python3
#
# Usage:
# 	python3 get-zlistunspent.py
# Description:
#	Output a list of zaddrs with unspent CMM
# Caveats:
#	Probably should take a minimum confirmation threshdold (eg data[i]["confirmations"] > 3) as an argument
#

import json
import subprocess

from collections import defaultdict

command = "./commercium-cli z_listunspent"

response = subprocess.check_output(command, shell=True, universal_newlines=True)
data = json.loads( response )

listunspent = defaultdict(float)

i = 0
while ( i < len(data) ):
	if ( data[i]["spendable"] ):
		listunspent[data[i]["address"]] += data[i]["amount"]
	i += 1

for key, value in listunspent.items():
	print('%s %19.8f' %(key, value))
