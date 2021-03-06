#!/bin/bash
#
# ./monitor-masternodes.sh
#
# 12/27/20 - fixed bug calculating "Expected profit/day for all nodes is about"
#            bc needs to set scale to get decimal values.
#
# Displays
# 	unspent caddrs
#	unspent zaddrs
#	masternodes
#		X if masternode is not active
#		alias
#		number of current wins
#		caddr
#		total CMM (shieled and unspent
#	summary
#		current CMM value in sats
#		current BTC value in dollars
#		current CMM value in dollars
#
#		total value of wallet in dollars
#		Minimum price to buy a CMM Masternode
#
#		Profitabily of Masternode (TODO)
#
# Relies on:
#	get-masternode-list.py
#	get-masternode-winners.py
#	get-listunspent.py
#	get-zlistunspent.py
#	txidtocaddress.py
#	cmm.py
#	btc.py
#
#
#

CMMDIR="."

total=0.0;
numberofwinners=0;
masternodecount=0;
mymasternodecount=0;
totalwinners=0;
totalmasternodes=0;

	# list of all masternodes
masternodelist=`python3 get-masternode-list.py`;
totalmasternodes=`echo "$masternodelist" | wc -l`

	# list of all winning masternodes
winnernodelist=`python3 get-masternode-winners.py`;
totalwinners=`echo "$winnernodelist" | wc -l`

	# Display unspent CMM addresses
	# Exclude masternodes as we count those coins later
while read -r line ; do
	if [ -n "$line" ]; then
		caddr=`echo "$line"  | awk '{ print $1; }'`
		
			# if caddr is in the masternode list, then skip it in the total
			# though it is nice seeing this value split out. 
		if (( $(echo "$masternodelist" | grep -c "$caddr")  == 0 )); then
			cmm=`echo "$line"  | awk '{ print $2; }'`
			total=`awk -v total="$total" -v cmm="$cmm" 'BEGIN {printf("%19.8f", total+cmm)}'`
			echo "$line"  | awk 'BEGIN {} {printf("            %s %19.8f\n", $1, $2 )}'
		fi
	fi
done <<< $(python3 get-listunspent.py)

	# Display unspent shielded CMM (in zc... addresses)
while read -r line ; do
	if [ -n "$line" ]; then
			# trick here is to abbreviate the zddr
			# zcfZMJZnYt87LGMLTo9GLRCa7pd8Nw7DsTzo9jGELsoqpf5ezfpNTo2F5453cWDtWBjnjMGV1CHxHmypcRRqKP3QM51Aq9q
			# CeZ5jYCWN8kZ4nbj5MDrgq633M9dyjYtTm
			# zcfZMJZnYt87LG...ypcRRqKP3QM51Aq9q
		zaddr=`echo "$line"  | awk '{ print $1; }' | sed "s/\(..............\).*\(.................\)/\1...\2/"`
		
		cmm=`echo "$line"  | awk '{ print $2; }'`
		total=`awk -v total="$total" -v cmm="$cmm" 'BEGIN {printf("%19.8f", total+cmm)}'`
		echo "$zaddr $cmm" | awk 'BEGIN {} {printf("            %s %19.8f\n", $1, $2 )}'
	fi
done <<< $(python3 get-zlistunspent.py)

total_sheilded=0
	# Display all masternodes
while read in;
do
		#ignore comments or blank lines (not quite right for blank lines)
	comment=`echo $in | grep "^#"`
	if [ -z "$comment" -a "$in" != "" ]; then
	

		alias=`echo -n $in | awk '{ print $1; }'`
		
		collateral_output_txid=`echo -n $in | awk '{ print $4; }'`
		
		caddress=`python3 txidtocaddress.py $collateral_output_txid`

			# only count masternodes that are active
		mninlist=`echo $masternodelist | grep -o $caddress`
		if [ -n "$mninlist" ]; then
			echo -n "  "
			mymasternodecount=$((mymasternodecount+1))
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
		numberofwinners=`awk -v numberofwinners="$numberofwinners" -v winnercount="$winnercount" 'BEGIN {printf("%d", numberofwinners+winnercount)}'`

		echo -n $caddress
		
		amount=`$CMMDIR/commercium-cli z_getbalance "$caddress"`;
		total_sheilded=`echo "$total_sheilded + $amount" | bc`
		
		printf "                     %10.1f\n" $amount

		total=`echo "$total + $amount" | bc`
	fi

done < ~/.commercium/masternode.conf

printf "                                               %19.8f %10.1f\n" $total $total_sheilded


printf "Winners      %2d out of %2d (%d%%)\n" $numberofwinners $totalwinners $((100 * numberofwinners / totalwinners))
printf "Masternodes  %2d out of %2d (%d%%)\n" $mymasternodecount $totalmasternodes $((100 * mymasternodecount / totalmasternodes))
printf "\n"


cmmvalue_insats=`python3 cmm.py`

bitcoinvalue=`python3 btc.py | sed 's/,//'`

	# bash does not have build in floating arithmetic, so farm the calculations out to bc
cmmvalue=`echo "$bitcoinvalue * $cmmvalue_insats" | bc`

printf "SPR is     %19.8f usd\n" `echo "$total * $bitcoinvalue * $cmmvalue_insats" | bc`
printf "TOT is     %19.8f usd\n" `echo "($mymasternodecount * 100000 + $total) * $bitcoinvalue * $cmmvalue_insats" | bc`


# MN rewards per day (until halving at block height 1051200

CMMRewardstoMN=2592

expectedrewardperday=$(( (CMMRewardstoMN * mymasternodecount / totalmasternodes) ))

printf "\n"
printf "Expected %d CMM Reward per day which is about  $%.2f\n" $expectedrewardperday `echo "scale=2; $expectedrewardperday * $cmmvalue" | bc`
printf "Expected profit/day for all nodes is about      $%.2f\n" `echo "scale=2; $expectedrewardperday * $cmmvalue - ($mymasternodecount*5)/30" | bc`
#printf "Expected profit/day for all nodes is about      $%.2f\n" `awk -v expectedrewardperday="$expectedrewardperday" -v cmmvalue="$cmmvalue" -v mymasternodecount="$mymasternodecount" 'BEGIN { printf("%.8f",  (expectedrewardperday * cmmvalue - (mymasternodecount*5)/30) ) }'`

printf "\n"
printf "Through MN rewards, can buy new MN in about %d days\n" `echo "(100000-$total)/$expectedrewardperday" | bc`
mnbuy=`echo "100000 * $bitcoinvalue * $cmmvalue_insats" | bc`
mnreward=`echo "(100000/$expectedrewardperday)*($mymasternodecount*5)/30" | bc`



halvingheight=1051200
blockheight=`./commercium-cli getblockchaininfo | grep "blocks" | sed 's/  "blocks": //' | sed 's/,//'`

daystohalving=`echo "($halvingheight-$blockheight)/1440" | bc`

printf "Days to halving %d (current block %s, halving block %s, blocks per day %s)\n" $daystohalving $blockheight $halvingheight "1440"

# at what CMM sats does MN rewards become profitable?
# 
# 1 MN is $5 / month.
# assume a 30 day month
# so we need to make $5/30 per day to be profitable or $0.166666666666667
# CMM in dollars is $cmmvalue
# so we need a CMM value of 

printf "BTC is            %19.8f (US$)\n" $bitcoinvalue
printf "CMM is            %19.8f (sats)\n" $cmmvalue_insats
printf "CMM is            %19.8f (US$)\n" $cmmvalue
printf "\n"

printf "CMM Masternode at today's price is at least    $%.2f\n" $mnbuy
printf "CMM Masternode through MN rewards is at least  $%.2f\n" $mnreward
printf "                                              $%.2f\n" `echo "scale=2; $mnbuy - $mnreward" | bc`

printf "MN Profitabily (assuming US\$5/month VPS):\n"
neededcmmprice=`awk -v mymasternodecount="$mymasternodecount" -v expectedrewardperday="$expectedrewardperday" 'BEGIN { printf("%.8f", (5*mymasternodecount)/(30*expectedrewardperday) )}'`

printf "Need CMM value of %19.8f (US$)  to break even\n" $neededcmmprice

neededcmmpriceinsats=`awk -v neededcmmprice="$neededcmmprice" -v bitcoinvalue="$bitcoinvalue" 'BEGIN { printf("%.8f", (neededcmmprice/bitcoinvalue) ) }'`
printf "Need CMM value of %19.8f (sats) to break even\n" $neededcmmpriceinsats

neededbtcpriceindollars=`awk -v neededcmmprice="$neededcmmprice" -v cmmvalue="$cmmvalue" -v bitcoinvalue="$bitcoinvalue" 'BEGIN { printf("%.8f", (neededcmmprice/cmmvalue)*bitcoinvalue ) }'`
printf "Need BTC value of %19.8f (US$)  to break even\n" $neededbtcpriceindollars
