#!/bin/bash
#
# ./listmasternode-simple-winners.sh
#
# List masternodes using alias, # winners, caddr, cmm amount
#

CMMDIR="."

masternodelist=`python3 get-masternode-list.py`;
winnernodelist=`python3 get-masternode-winners.py`;

	# Display all unspent addresses
python3 get-listunspent.py | awk 'BEGIN {} {printf("            %s %19.8f\n", $1, $2 )}'

	# Display all masternodes
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

