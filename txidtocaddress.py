#!/usr/bin/env python
#
# usage: python3 txidtocaddress.py collateral_output_txid
#
# Find the caddress associated with the collateral_output_txid in masternode.conf
# To see the json structure use ./commercium-cli help gettransaction
#

import subprocess
import json
import sys

txid=str(sys.argv[1])

command = "./commercium-cli gettransaction \"" + txid + "\""

response = subprocess.check_output(command, shell=True, universal_newlines=True)
data = json.loads( response )

i = 0
while i < len(data["details"]):
    if ( data["details"][i]["amount"] == 100000.0 ):
        print ( data["details"][i]["address"] )
    i += 1
