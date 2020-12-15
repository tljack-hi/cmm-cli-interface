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
