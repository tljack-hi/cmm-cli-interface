# commercium-cli - linux based use

Notes on setting up and maintaining commercium masternodes using the commercium-cli command line interface on linux

# Overview

## Table of Abbreviations


Abbreviation|Description|Example
------------|-----------|----------------------------------------------
caddr|Commercium Address - Transparent Address|CeZ5jYCWN8kZ4nbj5MDrgq633M9dyjYtTm
MN|Masternode| |
opid|operation id|opid-674f497c-c117-4d48-aa48-3e813ce140f4
zaddr|Shielded Address|zcE1ZcsGbrUwBike2gFnhLwLerHkqQmQtizK6wyGeJRAViDxwxEuJpLj6rpPZzcantBxqfSWRP4CwvEUjjUoaA7HZ3RSLNH

## Table of Common Terms

Term|Definition
------------------|------------------------------------------
Commercium Address|Also known as a caddr, this is a transparent Z address
collateral|refers to the 100,000 CMM reserved to secure the Masternode
Shielded|
Sapling|
Sprout|
Transparent|

## Table of Commercium-cli Commands

Command|Short Description
------------|-------------------------------------------------------
getnewaddress|Returns a new Commercium address for receiving payments.
gettransaction|Get detailed information about in-wallet transaction  <txid>.
masternode list | Print list of all known masternodes
masternode winners|Print list of masternode winners
z_getbalance|Returns the balance of a taddr or zaddr belonging to the node's wallet.
z_getnewaddress|Returns a new shielded address for receiving payments.
z_getoperationstatus|Get operation status and any associated result or error data. The operation will remain in memory.
z_listaddresses|Returns the list of Sprout and Sapling shielded addresses belonging to the wallet.
z_sendmany|Send CMM from one address to another.
z_shieldcoinbase|Shield transparent coinbase funds by sending to a shielded zaddr.

## Masternode Setup

There are 6 steps to create the MN

Step 1) Create the MN server. Get root password and ipaddress

Step 2) Setup passwordless ssh using root password and ipaddress

Step 3) Prepare the MN server

Step 4) Setup the wallet with the MN details. Get [mngenkey] and MN alias.

Step 5) Finish the MN server using [mngenkey].

Step 6) Start MN on wallet computer ./commercium-cli startalias mn27

# Masternode Monitoring

## List Caddr from Masternode.conf

Let's create a list of our MN caddrs using the masternode.conf file.

The masternode.conf file is located at ~/.commercium/masternode.conf

And if you have at least one masternode, then masternode.conf will look something like this:

```
#Format: alias IP:port masternodeprivkey collateral_output_txid collateral_output_index
mn01 123.123.132.147:2019 5SaWpQgjtjL2yx5ig574zkNxUmaFNySZwRYDpKkBN6fMeydoaEWS 35c99d65ea1c75ad1d02e49e029901401351f7732d547433e146b057fd963bf51
mn02 123.123.132.142:2019 5haWpQgjtjL2yx5ig574zkNxUmaFNySZwRYDpKkBN6fMeydoaSyf 53c99d65ea1c75ad1d02e49e029901401351f7732d547433e146b057fd963jkd12
```
The relavant parts are the alias which can be anything. I tend to use "mn01", "mn02", and so on. Next is the IP, this is the ip address of the masternode server, next is the masternodeprivkey, and finally the collateral_output_txid. It is the **collateral_output_txid** that we will use to find the caddr of the masternode.


### txidtocaddress.py

```
cat << 'EOF' > txidtocaddress.py
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
EOF
```

Using your masternode.conf file you can find the  caddr of the masternode by running the following command where **collateral_output_txid** is from your masternode.conf file.

`python3 txidtocaddress.py collateral_output_txid`

So, let's see it work: In the same directory as you have commercium-cli and the above txidtocaddress.py - copy and paste this to your command line.

```
#!/bin/bash

while read in;
do

#    echo $in

        #ignore comments or blank lines (not quite right for blank lines)
    comment=echo $in | grep "^#"
    if [ -z "$comment" -a "$in" != "" ]; then

        alias=`echo -n $in | awk '{ print $1; }'`

        collateral_output_txid=echo -n $in | awk '{ print $4; }'

        caddress=python3 txidtocaddress.py $collateral_output_txid

        echo -n $alias " " $caddress

        amount=./commercium-cli z_getbalance "$caddress";

        total=awk -v total="$total" -v amount="$amount" 'BEGIN {printf("%19.8f", total+amount)}'
        printf " %19.8f\n" $amount
    fi

done < ~/.commercium/masternode.conf
```

## Move MN Generated CMM to a Caddr

MN rewards are sent to the caddr that holds the initial 100000 coins used to setup the MN. These reward CMMs, however, cannot be accessed directly but first must be sent to a shielded zaddr and then to a transparent caddr.

So we are talking about one or more caddr (caddrs) where the reward coins are, cadder_main where we want the coins to go, and zaddr an intermediate address we use to move the coins. So we are going to move the coins as:

    caddrs -> zaddr -> caddr_main

This example works if you have one or more masternodes.

**Step 1)** Get a zaddr which will be used to temporarily hold the CMM
To get a zaddr, either use an existing zaddr or create a new one.

To use an existing zaddr, display a list of all available zaddrs and pick one. To do this use the command:

`$ ./commercium-cli z_listaddresses`

Or to create a new zaddr, use the command:

`$ ./commercium-cli z_getnewaddress`

With either method you will have a zaddr that you can use to send the CMM rewards.

**Step 2)** See what is in the zaddr

`$ ./commercium-cli z_getbalance zaddr`

**Step 3)** Move the CMM to zaddr:

For safety, start by moving a little bit and making sure it works as you expect.

Let's start by moving 1 UXTOs (usually 1.8 CMM) to the zaddress:

`$ ./commercium-cli z_shieldcoinbase "*" "zaddr" 0.0001 1`

Confirm that the transfer worked (this does take time) by using the z_getbalance command from Step 2. Once you are sure this is working right, you can move all (well alot) of CMM with a single command:

`$. /commercium-cli z_shieldcoinbase "*" "zaddr" 0.0001 5000`

**Step 4)** See what happened:

`$ ./commercium-cli z_getoperationstatus`

**Step 5)** Have an adult beverage and chillax.

**Step 6)** Take a peek at the zaddr and see if the CMM are there:

./commercium-cli z_getbalance zaddr

If 0.0000, go to Step 5

Otherwise, note down the number, say it is 1111.1112 CMM

**Step 7)** Send the coins in zaddr to your destination commercium address (caddr_main)

You are going to send the zaddr balance CMM minus the "fee" of .0001 CMM.

So 1111.1112 - .0001 = 1111.1111 <- that is the amount we send:

`$ ./commercium-cli z_sendmany "zaddr" "[{\"amount\": 1111.1111, \"address\": \"caddr_main\"}]"`

Note that once you have gone through all of this, most of the steps can be skipped. Once you have a working zaddr, you can use this same address all of the time. And with this you will just need to basically run the three command:

```
$ ./commercium-cli z_shieldcoinbase "*" "zaddr" 0.0001 5000
$ ./commercium-cli z_getbalance zaddr
# note down the cmm balance. call this CMM_BALANCE
$ ./commercium-cli z_sendmany "zaddr" "[{\"amount\": CMM_BALANCE-.0001, \"address\": \"caddr_main\"}]"
```
## Check Command Status with OPID

If a command like z_shieldcoinbase returns an opid, that opid can be used to find out more about the status of the command.

Suppose we run the command:

```
$ ./commercium-cli z_shieldcoinbase "*" "zcE1ZcsGbrUwBike2gFnhLwLerHkqQmQtizK6wyGeJRAViDxwxEuJpLj6rpPZzcantBxqfSWRP4CwvEUjjUoaA7HZ3RSLNH" 0.0001 5000
{
  "remainingUTXOs": 0,
  "remainingValue": 0.00000000,
  "shieldingUTXOs": 3,
  "shieldingValue": 5.40000000,
  "opid": "opid-e21030af-048b-48b7-8408-6ee5417e280d"
}
```
Notice that an opid is returned. We can find out more about the command by examining that opid. This is done by:

`$ ./commercium-cli z_getoperationstatus '["opid-e21030af-048b-48b7-8408-6ee5417e280d"]'`

## List Winning Masternodes

Masternodes receiving a reward a chosen randomly from active masternodes. A list of the next 21 masternodes that get the reward can be found by using the `masternode winners` command. This returns a list on JSON of the winners.

`$ ./commercium-cli masternode winners`

Here is an abbreviated output of the list:

```
response = [
  {
    "nHeight": 996535,
    "winner": {
      "address": "CeZ5jYCWN8kZ4nbj5MDrgq633M9dyjYtTm",
      "nVotes": 10
    }
  },
  {
    "nHeight": 996536,
    "winner": [
      {
        "address": "CGhmBsxg5msqvoVwJWvKAJ16eufDUWvp4x",
        "nVotes": 8
      },
      {
        "address": " CRcrMGtgutNeseRrJ7mivvEFKf6NA2Ma8G",
        "nVotes": 2
      }
    ]
  },
  {
    "nHeight": 996537,
    "winner": {
      "address": "CKDxG3WkshLVaVLLFR5TRsjzAnSA2XtveF",
      "nVotes": 10
    }
  },
  {
    "nHeight": 996543,
    "winner": {
      "address": "Unknown",
      "nVotes": 0
    }
  },
]
```
Note that "winner" can either be a list (the first occurrence shown above) or an array (the second occurrence shown above). The second winner array contains the winning address with 8 votes, and a losing address with 2 votes. Notice that the losing address has a prepended blank space and then the caddr. This is useful as you we use the caddr without this blank.

With this in mind we can create a simple python program to list the winners:

### get-masternode-winners.py

```
#!/usr/bin/env python
#
# usage: python3 get-masternode-winners.py
#
# Get the list of winner masternodes
#

import subprocess
import json
import sys

command = "./commercium-cli masternode winners"

response = subprocess.check_output(command, shell=True, universal_newlines=True)
data = json.loads( response )

	# NOTE: "winner" can be a list or an array
	# NOTE: losers are prepended with a space - so ignore that one.

i = 0
while ( i < len(data) ):
	if ( not isinstance (data[i]["winner"], list) ):
		if ( data[i]["winner"]["address"] != "Unknown" ):
			print ( data[i]["winner"]["address"] )
	else:
		j = 0
		while ( j < len(data[i]["winner"]) ):
			if ( data[i]["winner"][j]["address"][0] != " " ):
				print ( data[i]["winner"][j]["address"] )
			j += 1
	i += 1
```

There should always be 21 masternode winners.

## Masternode List Adding winners

Earlier we create a simple shell script that lists the masternodes and their cmm. We can combine that simple script with this winning masternode list and show which of our masternodes will be a winner and the number of wins (can be more than one).

### listmasternode-simple-winners.sh

```
#!/bin/bash
#
# ./listmasternode-simple-winners.sh
#
# List masternodes using alias, # winners, caddr, cmm amount
#

CMMDIR="."

winnernodelist=`python3 get-masternode-winners.py`;

while read in;
do

#	echo $in

		#ignore comments or blank lines (not quite right for blank lines)
	comment=`echo $in | grep "^#"`
	if [ -z "$comment" -a "$in" != "" ]; then

		alias=`echo -n $in | awk '{ print $1; }'`

		collateral_output_txid=`echo -n $in | awk '{ print $4; }'`

		caddress=`python3 txidtocaddress.py $collateral_output_txid`

		echo -n $alias " "

			# Show the number of times this caddr won (if any)
		winnercount=`echo $winnernodelist | grep -o $caddress | wc -l`
		if [ "$winnercount" == "0" ]; then
			echo -n "    "
		else
			printf "%2d  " $winnercount
		fi

		echo -n $caddress

		amount=`$CMMDIR/commercium-cli z_getbalance "$caddress"`;

		total=`awk -v total="$total" -v amount="$amount" 'BEGIN {printf("%19.8f", total+amount)}'`
		printf " %19.8f\n" $amount
	fi

done < ~/.commercium/masternode.conf

```

## List Enabled Masternodes

Up until this point we have used masternode.conf to list our masternodes. The one thing we don't know at this point, however, if the master node is currently enabled and working. We would like to add to our masternode list script an indicator next to the masternode whether it is enabled or not.
To do this we need to get the masternode list from the blockchain. To do this, we use the command:

`./commercium-cli masternode list`

which returns a JSON array of the form:

```
[
  {
    "rank": 1,
    "network": "ipv4",
    "ip": "167.172.114.178",
    "txhash": "8382aed22c56e805a660f254f25676b6c32ca1413d9cf1153bbfa1acb2b0fa7a",
    "outidx": 0,
    "status": "ENABLED",
    "addr": "CH3GP1YZzWja38oMhPA2RRDa2fGxT1U49F",
    "version": 170008,
    "lastseen": 1608004935,
    "activetime": 867686,
    "lastpaid": 1608003415
  },
  {
    "rank": 2,
    "network": "ipv4",
    "ip": "5.253.86.33",
    "txhash": "dfe5dbb9ab52fb6a8e78b840f1af79d32b200d11cc8ef095f6e7d70d1afdceb5",
    "outidx": 0,
    "status": "ENABLED",
    "addr": "CK7PGgMAT5ni7seADFAESEaEfy3tLL9KG1",
    "version": 170009,
    "lastseen": 1608005081,
    "activetime": 206271,
    "lastpaid": 1608004050
  }
]
```

## get-masternode-list.py


```
#!/usr/bin/env python3
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
```

So all we are going to do is add a column that is blank if the masternode is fine or an 'X' if it is missing from the masternode list. To do this we are going to add one line to our script to get the masternode list and another few lines to display if the caddr is missing from the list or not:

```#!/usr/bin/env python3
#
# usage: python3 get-listunspent.py
#
# List all caddrs with unspent CMM and the CMM
# probably should take a minimum confirmation threshdold (eg data[i]["confirmations"] > 3)
#

import json
import subprocess

from collections import defaultdict

command = "./commercium-cli listunspent"

response = subprocess.check_output(command, shell=True, universal_newlines=True)
data = json.loads( response )

listunspent = defaultdict(float)

i = 0
while ( i < len(data) ):
	if ( not data[i]["generated"] ):
		listunspent[data[i]["address"]] += data[i]["amount"]
	i += 1

for key, value in listunspent.items():
    print ( key, value )
masternodelist=`python3 get-masternode-list.py`;

mninlist=`echo $masternodelist | grep -o $caddress`
#		echo $mninlist
if [ -n "$mninlist" ]; then
  echo -n "  "
else
  echo -n "X "
fi
````

Here is the code with the changes:

### listmasternodes-simple-winners-missing.sh

```
#!/bin/bash
#
# ./listmasternode-simple-winners.sh
#
# List masternodes using alias, # winners, caddr, cmm amount
#

CMMDIR="."

masternodelist=`python3 get-masternode-list.py`;
winnernodelist=`python3 get-masternode-winners.py`;

while read in;
do

#	echo $in

		#ignore comments or blank lines (not quite right for blank lines)
	comment=`echo $in | grep "^#"`
	if [ -z "$comment" -a "$in" != "" ]; then

		alias=`echo -n $in | awk '{ print $1; }'`

		collateral_output_txid=`echo -n $in | awk '{ print $4; }'`

		caddress=`python3 txidtocaddress.py $collateral_output_txid`

		mninlist=`echo $masternodelist | grep -o $caddress`
#		echo $mninlist
		if [ -n "$mninlist" ]; then
			echo -n "  "
		else
			echo -n "X "
		fi

		echo -n $alias " "

			# Show the number of times this caddr won (if any)
		winnercount=`echo $winnernodelist | grep -o $caddress | wc -l`
		if [ "$winnercount" == "0" ]; then
			echo -n "    "
		else
			printf "%2d  " $winnercount
		fi

		echo -n $caddress

		amount=`$CMMDIR/commercium-cli z_getbalance "$caddress"`;

		total=`awk -v total="$total" -v amount="$amount" 'BEGIN {printf("%19.8f", total+amount)}'`
		printf " %19.8f\n" $amount
	fi

done < ~/.commercium/masternode.conf
```

## Add non-empty (unspent) Caddrs

The list we have now is of all the masternodes noting which ones are enabled, which are winnders, the caddr and the amount of CMM. One thing that we would like, that is not directly related to masternodes is a list of caddrs with unspent CMM. Now these unspent CMM could be in a masternode caddr if it was moved there, so we need to not duplicate that. Only if the caddr is not a masternode caddr would we like to add it to our list. We do this by using "listunspent". The command is:
(not like before)
`$ ./commercium-cli listunspent`

and heavily abbreviated output is:

```
[
  {
    "txid": "e8e64abe0738aa8bd63314b43e984c824be96519b3f64f8c1e4193229bb0719b",
    "vout": 1,
    "generated": false,
    "address": "CRbAcYUPeKkmZtWjgrXSiCRrAguqC7suWK",
    "scriptPubKey": "76a91464196f98dbe56bdb2fab4e55baac886a60cd97e888ac",(not like before)
    "amount": 73.71212376,
    "confirmations": 969,
    "spendable": true
  },
  {   
    "txid": "b903e1fce074c6d7725177d06211fca2dd699feac4493386be37ac962e31c89b",
    "vout": 1,
    "generated": true,
    "address": "CQ88NBxV3ipfVAPKpKe2REY1CoHPug9TeT",
    "account": "",
    "scriptPubKey": "76a914540433fca9033626c6c22430c3adbad32887ef4a88ac",
    "amount": 1.80000000,
    "confirmations": 257,(not like before)
    "spendable": true
  }
]
```
The entries that have "generated" as true are masternode rewards and these are shown in the list that we have created. What we want are the other address.

So what we would like to do is go through this list and note every "address" where "generated" is false. So real quick, let's see what we get

```
CPmvbgTS4udzXB3nuyVA7Q8TV3Wfo9VQGb       1085.39980000
CPmvbgTS4udzXB3nuyVA7Q8TV3Wfo9VQGb        711.79980000
```

So basically we are going to get a bunch of different caddrs with cmm values. So we need to add these up in an array and spit them out. In the manly world of AWK this is called an associative array, in the world of python3 it is called a dictionary. So let's do this:



### get-listunspent.py

```
#!/usr/bin/env python3
#
# Usage:
#   python3 get-listunspent.py
# Description:
#   Output a list of caddrs with unspent CMM all nicely added up
# Caveats:
#   Should take a minimum confirmation threshdold (eg data[i]["confirmations"] > 3) as an argument
#

import json
import subprocess

from collections import defaultdict

command = "./commercium-cli listunspent"

response = subprocess.check_output(command, shell=True, universal_newlines=True)
data = json.loads( response )

listunspent = defaultdict(float)

i = 0
while ( i < len(data) ):
	if ( not data[i]["generated"] ):
		listunspent[data[i]["address"]] += data[i]["amount"]
	i += 1

for key, value in listunspent.items():
	print('%s %19.8f' %(key, value))
```

## Another thought

we can add up all the values as we did above. Or we could simply get a unique list of the caddrs and then use 	amount=`$CMMDIR/commercium-cli z_getbalance "$variable"`; to do the sums for us. Once we know the wallet address, this is a faster way to find the balance.

## The Next step

The next goal is to have a sum total of all owned CMM by the wallet. There are a few hiccups based on what we have done so far:
1) If one moves CMM to a masternode address, then the current scheme we have so far will show that CMM in the masternode address AND in the listunspent address. So this needs to be resolved.
2) Second, if CMM is in a zaddr then that will not be included in the total. So we need to show these.

With these resolved we can get an accurate total. So, let's begin. One good thing is that we *know* the answer from `./commercium-cli getbalance` which also includes the "hidden" coins used as collateral for the masternode.
