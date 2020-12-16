

# Overview of Functions


## Addressindex

Function|Status|Short Description
---------------------|------|---------------------------------------------------
getaddressbalance||Returns the balance for an address(es) (requires addressindex to be enabled).
getaddressdeltas||Returns all changes for an address (requires addressindex to be enabled).
getaddressmempool||Returns all mempool deltas for an address (requires addressindex to be enabled).
getaddresstxids||Returns the txids for an address(es) (requires addressindex to be enabled).
getaddressutxos||Returns all unspent outputs for an address (requires addressindex to be enabled).


## Blockchain

Function|Status|Short Description
---------------------|------|---------------------------------------------------
getbestblockhash||Returns the hash of the best (tip) block in the longest block chain.
getblock||Returns block details given the block height or block hash.
getblockchaininfo||Returns an object containing various state info regarding block chain processing.|
getblockcount||Returns the number of blocks in the best valid block chain.
getblockhash||Returns hash of block in best-block-chain at index provided.
getblockheader||Returns either serialized, hex-encoded data or object with the information for blockheader
getchaintips||Return information about all known tips in the block tree, including the main chain as well as orphaned branches.
getdifficulty||Returns the proof-of-work difficulty as a multiple of the minimum difficulty.
getmempoolinfo||Returns details on the active state of the TX memory pool.
getrawmempool||Returns all transaction ids in memory pool as a json array of string transaction ids.
getspentinfo||Returns the txid and index where an output is spent.
gettxout||Returns details about an unspent transaction output.
gettxoutproof||Returns a hex-encoded proof that "txid" was included in a block.
gettxoutsetinfo||Returns statistics about the unspent transaction output set.
verifychain||Verifies blockchain database.
verifytxoutproof||Verifies that a proof points to a transaction in a block, returning the transaction it commits to and throwing an RPC error if the block is not in our best chain

## Commercium
Function|Status|Short Description
---------------------|------|---------------------------------------------------
checkbudgets||Initiates a budget check cycle manually
createmasternodekey||Create a new masternode private key
getbudgetinfo||Show current masternode budgets.
getbudgetprojection||Show the projection of which proposals will be paid the next cycle
getbudgetvotes||Print vote information for a budget proposal
getmasternodecount||Get masternode count values
getmasternodeoutputs||Print all masternode transaction outputs
getmasternodescores||Print list of winning masternode by score
getmasternodestatus||Print masternode status
getmasternodewinners||Print the masternode winners for the last n blocks
getnextsuperblock||Print the next super block height
getpoolinfo||Returns anonymous pool-related information
listmasternodeconf||Print masternode.conf in JSON format
listmasternodes||Get a ranked list of masternodes
masternode|Deprecated|Set of commands to execute masternode related actions
masternodeconnect||Attempts to connect to specified masternode address
masternodecurrent||Get current masternode winner
masternodedebug||Print masternode status
mnbudget|Deprecated|Vote or show current budgets
mnbudgetrawvote||Compile and relay a proposal vote with provided external signature instead of signing vote internally
mnbudgetvote||Vote on a budget proposal
mnfinalbudget||Vote or show current budgets
mnsync||Returns the sync status or resets sync.
obfuscation|Obsolete|Obfuscation is not supported any more. User Zerocoin
preparebudget||Prepare proposal for network by signing and creating tx
spork||show' to show all current spork settings, active to show which sporks are active
startalias||Attempts to start an alias
startmasternode||Attempts to start one or more masternode(s)
submitbudget||Submit proposal to the network


## Control
Function|Status|Short Description
---------------------|------|---------------------------------------------------
getalldata||Returns a huge amount of data about one's account
getinfo||Returns an object containing various state info.   
help||Get help for function
stop||Stop the commerciumd daemon

## Disclosure
Function|Status|Short Description
---------------------|------|---------------------------------------------------
z_getpaymentdisclosure||Generate a payment disclosure for a given joinsplit output.
z_validatepaymentdisclosure||Validates a payment disclosure.

## Generating
Function|Status|Short Description
---------------------|------|---------------------------------------------------
generate||Mine blocks immediately (before the RPC call returns)
getgenerate||Return if the server is set to generate coins or not. The default is false.
setgenerate||Set 'generate' true or false to turn generation on or off.


## Mining
Function|Status|Short Description
---------------------|------|---------------------------------------------------
getblocksubsidy||Returns block subsidy reward, taking into account the mining slow start and the founders reward, of block at index provided.
getblocktemplate||If the request parameters include a 'mode' key, that is used to explicitly select between the default 'template' request or a 'proposal'.
getlocalsolps||Returns the average local solutions per second since this node was started.
getmininginfo||Returns a json object containing mining-related information.
getnetworkhashps|Deprevated|Use getnetworksolps.
getnetworksolps||Returns the estimated network solutions per second based on the last n blocks.
prioritisetransaction||Accepts the transaction into mined blocks at a higher (or lower) priority
submitblock||Attempts to submit new block to network.

## Network
Function|Status|Short Description
---------------------|------|---------------------------------------------------
addnode||Attempts add or remove a node from the addnode list.
clearbanned||Clear all banned IPs.
disconnectnode||Immediately disconnects from the specified node.
getaddednodeinfo||Returns information about the given added node, or all added nodes
getconnectioncount||Returns the number of connections to other nodes.
getdeprecationinfo||Returns an object containing current version and deprecation block height. Applicable only on mainnet.
getnettotals||Returns information about network traffic, including bytes in, bytes out, and current time.
getnetworkinfo||Returns an object containing various state info regarding P2P networking.
getpeerinfo||Returns data about each connected network node as a json array of objects.
listbanned||List all banned IPs/Subnets.
ping||Requests that a ping be sent to all other nodes, to measure ping time.
setban||Attempts add or remove a IP/Subnet from the banned list.

## Rawtransactions
Function|Status|Short Description
---------------------|------|---------------------------------------------------
createrawtransaction||Create a transaction spending the given inputs and sending to the given addresses.
decoderawtransaction||Return a JSON object representing the serialized, hex-encoded transaction.
decodescript||Decode a hex-encoded script.
fundrawtransaction||Add inputs to a transaction until it has enough in value to meet its out value.
getrawtransaction||Return the raw transaction data.
sendrawtransaction||Submits raw transaction (serialized, hex-encoded) to local node and network.
signrawtransaction||Sign inputs for raw transaction (serialized, hex-encoded).

## Util
Function|Status|Short Description
---------------------|------|---------------------------------------------------
createmultisig||Creates a multi-signature address with n signature of m keys required.
estimatefee||Estimates the approximate fee per kilobyte
estimatepriority||Estimates the approximate priority
validateaddress||Return information about the given Commercium address.
verifymessage||Verify a signed message
z_validateaddress||Return information about the given z address.


## Wallet
Function|Status|Short Description
---------------------|------|---------------------------------------------------
addmultisigaddress||Add a nrequired-to-sign multisignature address to the wallet.
backupwallet||Safely copies wallet.dat to destination filename
dumpprivkey||Reveals the private key corresponding to 't-addr'.
dumpwallet||Dumps taddr wallet keys in a human-readable format.  Overwriting an existing file is not permitted.
encryptwallet||Encrypts the wallet with 'passphrase'.
getaccount|Deprecated|Returns the account associated with the given address.
getaccountaddress|Deprecated|Returns the account associated with the given address.
getaddressesbyaccount|Deprecated|Returns the list of addresses for the given account.
getbalance||Returns a new Commercium address for receiving payments.
getnewaddress||Returns a new Commercium address for receiving payments.
getrawchangeaddress||Returns a new Commercium address, for receiving change. This is for use with raw transactions, NOT normal use.
getreceivedbyaccount|Deprecated|Returns the total amount received by addresses with <account> in transactions with at least [minconf] confirmations.
getreceivedbyaddress||Returns the total amount received by the given Commercium address in transactions with at least minconf confirmations.
gettransaction||Get detailed information about in-wallet transaction.
getunconfirmedbalance||Returns the server's total unconfirmed balance
getwalletinfo||Returns an object containing various wallet state information.
importaddress||Adds an address or script (in hex) that can be watched as if it were in your wallet but cannot be used to spend.
importprivkey||Adds a private key (as returned by dumpprivkey) to your wallet.
importwallet||Imports taddr keys from a wallet dump file (see dumpwallet).
keypoolrefill||Fills the keypool.
listaccounts|Deprecated|Returns Object that has account names as keys, account balances as values.
listaddressgroupings||Lists groups of addresses which have had their common ownership made public by common use as inputs or as the resulting change in past transactions.
listlockunspent||Returns list of temporarily unspendable outputs. See the lockunspent call to lock and unlock transactions for spendi
listreceivedbyaccount|Deprecated|List balances by account.
listreceivedbyaddress||List balances by receiving address.
listsinceblock||Get all transactions in blocks since block [blockhash], or all transactions if omitted
listtransactions||Returns up to 'count' most recent transactions skipping the first 'from' transactions for account 'account'.
listunspent||Returns array of unspent transaction outputs with between minconf and maxconf (inclusive) confirmations.
lockunspent||Updates list of temporarily unspendable outputs.
move|Deprecated|Move a specified amount from one account in your wallet to another.
sendfrom|Deprecated|Use sendtoaddress.
sendmany||Send multiple times. Amounts are decimal numbers with at most 8 digits of precision.
sendtoaddress||Send an amount to a given address. The amount is a real and is rounded to the nearest 0.00000001
setaccount|Deprecated|Sets the account associated with the given address.
settxfee||Set the transaction fee per kB.
signmessage||Sign a message with the private key of an address.
z_exportkey||Reveals the zkey corresponding to 'zaddr'. Then the z_importkey can be used with this output.
z_exportviewingkey||Reveals the viewing key corresponding to 'zaddr'. Then the z_importviewingkey can be used with this output.
z_exportwallet||Exports all wallet keys, for taddr and zaddr, in a human-readable format.  Overwriting an existing file is not permitted.
z_getbalance||Returns the balance of a taddr or zaddr belonging to the node's wallet.
z_getnewaddress||Returns a new shielded address for receiving payments.
z_getoperationresult||Retrieve the result and status of an operation which has finished, and then remove the operation from memory.
z_getoperationstatus||Get operation status and any associated result or error data.  The operation will remain in memory.
z_gettotalbalance||Return the total value of funds stored in the node's wallet.
z_importkey||Adds a zkey (as returned by z_exportkey) to your wallet.
z_importviewingkey||Adds a viewing key (as returned by z_exportviewingkey) to your wallet.
z_importwallet||Imports taddr and zaddr keys from a wallet export file (see z_exportwallet).
z_listaddresses||Returns the list of Sprout and Sapling shielded addresses belonging to the wallet.
z_listoperationids||Returns the list of operation ids currently known to the wallet.
z_listreceivedbyaddress||Return a list of amounts received by a zaddr belonging to the node's wallet.
z_listunspent||Returns array of unspent shielded notes with between minconf and maxconf (inclusive) confirmations.
z_mergetoaddress||Merge multiple UTXOs and notes into a single UTXO or note.  Coinbase UTXOs are ignored; use `z_shieldcoinbase`
to combine those into a single note.
z_sendmany||Send multiple times. Amounts are decimal numbers with at most 8 digits of precision.
z_shieldcoinbase||Shield transparent coinbase funds by sending to a shielded zaddr.  
zcbenchmark||Runs a benchmark of the selected type samplecount times, returning the running times of each sample.
zcrawjoinsplit|Deprecated|Splices a joinsplit into rawtx. Inputs are unilaterally confidential.
zcrawkeygen|Deprecated|Generate a zcaddr which can send and receive confidential values.
zcrawreceive|Deprecated|Decrypts encryptednote and checks if the coin commitments are in the blockchain as indicated by the "exists" result.
zcsamplejoinsplit|Deprecated|Perform a joinsplit and return the JSDescription.


------------------------------------------------------------------------------------------

##Addressindex

### getaddressbalance
```
getaddressbalance

Returns the balance for an address(es) (requires addressindex to be enabled).

Arguments:
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
}

Result:
{
  "balance"  (string) The current balance in satoshis
  "received"  (string) The total number of satoshis received (including change)
}

Examples:
> commercium-cli getaddressbalance '{"addresses": ["12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressbalance", "params": [{"addresses": ["12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getaddressdeltas
```
getaddressdeltas

Returns all changes for an address (requires addressindex to be enabled).

Arguments:
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
  "start" (number) The start block height
  "end" (number) The end block height
  "chainInfo" (boolean) Include chain info in results, only applies if start and end specified
}

Result:
[
  {
    "satoshis"  (number) The difference of satoshis
    "txid"  (string) The related txid
    "index"  (number) The related input or output index
    "height"  (number) The block height
    "address"  (string) The base58check encoded address
  }
]

Examples:
> commercium-cli getaddressdeltas '{"addresses": ["12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressdeltas", "params": [{"addresses": ["12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getaddressmempool
```
getaddressmempool

Returns all mempool deltas for an address (requires addressindex to be enabled).

Arguments:
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
}

Result:
[
  {
    "address"  (string) The base58check encoded address
    "txid"  (string) The related txid
    "index"  (number) The related input or output index
    "satoshis"  (number) The difference of satoshis
    "timestamp"  (number) The time the transaction entered the mempool (seconds)
    "prevtxid"  (string) The previous txid (if spending)
    "prevout"  (string) The previous transaction output index (if spending)
  }
]

Examples:
> commercium-cli getaddressmempool '{"addresses": ["12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressmempool", "params": [{"addresses": ["12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getaddresstxids
```
getaddresstxids

Returns the txids for an address(es) (requires addressindex to be enabled).

Arguments:
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ]
  "start" (number) The start block height
  "end" (number) The end block height
}

Result:
[
  "transactionid"  (string) The transaction id
  ,...
]

Examples:
> commercium-cli getaddresstxids '{"addresses": ["12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddresstxids", "params": [{"addresses": ["12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getaddressutxos
```
getaddressutxos

Returns all unspent outputs for an address (requires addressindex to be enabled).

Arguments:
{
  "addresses"
    [
      "address"  (string) The base58check encoded address
      ,...
    ],
  "chainInfo"  (boolean) Include chain info with results
}

Result
[
  {
    "address"  (string) The address base58check encoded
    "txid"  (string) The output txid
    "height"  (number) The block height
    "outputIndex"  (number) The output index
    "script"  (strin) The script hex encoded
    "satoshis"  (number) The number of satoshis of the output
  }
]

Examples:
> commercium-cli getaddressutxos '{"addresses": ["12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"]}'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressutxos", "params": [{"addresses": ["12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```


------------------------------------------------------------------------------------------

## Blockchain

### getbestblockhash
```
getbestblockhash

Returns the hash of the best (tip) block in the longest block chain.

Result
"hex"      (string) the block hash hex encoded

Examples
> commercium-cli getbestblockhash
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbestblockhash", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getblock
```
getblock "hash|height" ( verbosity )

If verbosity is 0, returns a string that is serialized, hex-encoded data for the block.
If verbosity is 1, returns an Object with information about the block.
If verbosity is 2, returns an Object with information about the block and information about each transaction.

Arguments:
1. "hash|height"          (string, required) The block hash or height
2. verbosity              (numeric, optional, default=1) 0 for hex encoded data, 1 for a json object, and 2 for json object with transaction data

Result (for verbosity = 0):
"data"             (string) A string that is serialized, hex-encoded data for the block.

Result (for verbosity = 1):
{
  "hash" : "hash",       (string) the block hash (same as provided hash)
  "confirmations" : n,   (numeric) The number of confirmations, or -1 if the block is not on the main chain
  "size" : n,            (numeric) The block size
  "height" : n,          (numeric) The block height or index (same as provided height)
  "version" : n,         (numeric) The block version
  "merkleroot" : "xxxx", (string) The merkle root
  "finalsaplingroot" : "xxxx", (string) The root of the Sapling commitment tree after applying this block
  "tx" : [               (array of string) The transaction ids
     "transactionid"     (string) The transaction id
     ,...
  ],
  "time" : ttt,          (numeric) The block time in seconds since epoch (Jan 1 1970 GMT)
  "nonce" : n,           (numeric) The nonce
  "bits" : "1d00ffff",   (string) The bits
  "difficulty" : x.xxx,  (numeric) The difficulty
  "previousblockhash" : "hash",  (string) The hash of the previous block
  "nextblockhash" : "hash"       (string) The hash of the next block
}

Result (for verbosity = 2):
{
  ...,                     Same output as verbosity = 1.
  "tx" : [               (array of Objects) The transactions in the format of the getrawtransaction RPC. Different from verbosity = 1 "tx" result.
         ,...
  ],
  ,...                     Same output as verbosity = 1.
}

Examples:
> commercium-cli getblock "00000000febc373a1da2bd9f887b105ad79ddc26ac26c2b28652d64e5207c5b5"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblock", "params": ["00000000febc373a1da2bd9f887b105ad79ddc26ac26c2b28652d64e5207c5b5"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
> commercium-cli getblock 12800
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblock", "params": [12800] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getblockchaininfo
```
getblockchaininfo
Returns an object containing various state info regarding block chain processing.

Note that when the chain tip is at the last block before a network upgrade activation,
consensus.chaintip != consensus.nextblock.

Result:
{
  "chain": "xxxx",        (string) current network name as defined in BIP70 (main, test, regtest)
  "blocks": xxxxxx,         (numeric) the current number of blocks processed in the server
  "headers": xxxxxx,        (numeric) the current number of headers we have validated
  "bestblockhash": "...", (string) the hash of the currently best block
  "difficulty": xxxxxx,     (numeric) the current difficulty
  "verificationprogress": xxxx, (numeric) estimate of verification progress [0..1]
  "chainwork": "xxxx"     (string) total amount of work in active chain, in hexadecimal
  "commitments": xxxxxx,    (numeric) the current number of note commitments in the commitment tree
  "softforks": [            (array) status of softforks in progress
     {
        "id": "xxxx",        (string) name of softfork
        "version": xx,         (numeric) block version
        "enforce": {           (object) progress toward enforcing the softfork rules for new-version blocks
           "status": xx,       (boolean) true if threshold reached
           "found": xx,        (numeric) number of blocks with the new version found
           "required": xx,     (numeric) number of blocks required to trigger
           "window": xx,       (numeric) maximum size of examined window of recent blocks
        },
        "reject": { ... }      (object) progress toward rejecting pre-softfork blocks (same fields as "enforce")
     }, ...
  ],
  "upgrades": {                (object) status of network upgrades
     "xxxx" : {                (string) branch ID of the upgrade
        "name": "xxxx",        (string) name of upgrade
        "activationheight": xxxxxx,  (numeric) block height of activation
        "status": "xxxx",      (string) status of upgrade
        "info": "xxxx",        (string) additional information about upgrade
     }, ...
  },
  "consensus": {               (object) branch IDs of the current and upcoming consensus rules
     "chaintip": "xxxxxxxx",   (string) branch ID used to validate the current chain tip
     "nextblock": "xxxxxxxx"   (string) branch ID that the next block will be validated under
  }
}

Examples:
> commercium-cli getblockchaininfo
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockchaininfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getblockcount
```
getblockcount

Returns the number of blocks in the best valid block chain.

Result:
n    (numeric) The current block count

Examples:
> commercium-cli getblockcount
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockcount", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getblockhash
```
getblockhash index

Returns hash of block in best-block-chain at index provided.

Arguments:
1. index         (numeric, required) The block index

Result:
"hash"         (string) The block hash

Examples:
> commercium-cli getblockhash 1000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockhash", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getblockheader

```
returns either serialized, hex-encoded data or object with the information for blockheader

Usage: getblockheader "hash" ( verbose )

If verbose is false, returns a string that is serialized, hex-encoded data for blockheader 'hash'.
If verbose is true, returns an Object with information about blockheader <hash>.

Arguments:
1. "hash"          (string, required) The block hash
2. verbose           (boolean, optional, default=true) true for a json object, false for the hex encoded data

Result (for verbose = true):
{
  "hash" : "hash",     (string) the block hash (same as provided)
  "confirmations" : n,   (numeric) The number of confirmations, or -1 if the block is not on the main chain
  "height" : n,          (numeric) The block height or index
  "version" : n,         (numeric) The block version
  "merkleroot" : "xxxx", (string) The merkle root
  "finalsaplingroot" : "xxxx", (string) The root of the Sapling commitment tree after applying this block
  "time" : ttt,          (numeric) The block time in seconds since epoch (Jan 1 1970 GMT)
  "nonce" : n,           (numeric) The nonce
  "bits" : "1d00ffff", (string) The bits
  "difficulty" : x.xxx,  (numeric) The difficulty
  "previousblockhash" : "hash",  (string) The hash of the previous block
  "nextblockhash" : "hash"       (string) The hash of the next block
}

Result (for verbose=false):
"data"             (string) A string that is serialized, hex-encoded data for block 'hash'.

Examples:
> commercium-cli getblockheader "00000124818621bb2edf9e4dbf44faf133d7118053af337c72c2db9a5e5eeeca"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockheader", "params": ["00000124818621bb2edf9e4dbf44faf133d7118053af337c72c2db9a5e5eeeca"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```
------------------------------------------------------------------------------------------

### getchaintips

```
Return information about all known tips in the block tree, including the main chain as well as orphaned branches.

Result:
[
  {
    "height": xxxx,         (numeric) height of the chain tip
    "hash": "xxxx",         (string) block hash of the tip
    "branchlen": 0          (numeric) zero for main chain
    "status": "active"      (string) "active" for the main chain
  },
  {
    "height": xxxx,
    "hash": "xxxx",
    "branchlen": 1          (numeric) length of branch connecting the tip to the main chain
    "status": "xxxx"        (string) status of the chain (active, valid-fork, valid-headers, headers-only, invalid)
  }
]
Possible values for status:
1.  "invalid"               This branch contains at least one invalid block
2.  "headers-only"          Not all blocks for this branch are available, but the headers are valid
3.  "valid-headers"         All blocks are available for this branch, but they were never fully validated
4.  "valid-fork"            This branch is not part of the active chain, but is fully validated
5.  "active"                This is the tip of the active main chain, which is certainly valid

Examples:
> commercium-cli getchaintips
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getchaintips", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getdifficulty
```
getdifficulty

Returns the proof-of-work difficulty as a multiple of the minimum difficulty.

Result:
n.nnn       (numeric) the proof-of-work difficulty as a multiple of the minimum difficulty.

Examples:
$ ./commercium-cli getdifficulty
2056.499992338926

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getdifficulty", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getmempoolinfo
```
getmempoolinfo

Returns details on the active state of the TX memory pool.

Result:
{
  "size": xxxxx                (numeric) Current tx count
  "bytes": xxxxx               (numeric) Sum of all tx sizes
  "usage": xxxxx               (numeric) Total memory usage for the mempool
}

Examples:
$ ./commercium-cli getmempoolinfo
{
  "size": 2,
  "bytes": 3702,
  "usage": 4784
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempoolinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getrawmempool
```
getrawmempool ( verbose )

Returns all transaction ids in memory pool as a json array of string transaction ids.

Arguments:
1. verbose           (boolean, optional, default=false) true for a json object, false for array of transaction ids

Result: (for verbose = false):
[                     (json array of string)
  "transactionid"     (string) The transaction id
  ,...
]

Result: (for verbose = true):
{                           (json object)
  "transactionid" : {       (json object)
    "size" : n,             (numeric) transaction size in bytes
    "fee" : n,              (numeric) transaction fee in CMM
    "time" : n,             (numeric) local time transaction entered pool in seconds since 1 Jan 1970 GMT
    "height" : n,           (numeric) block height when transaction entered pool
    "startingpriority" : n, (numeric) priority when transaction entered pool
    "currentpriority" : n,  (numeric) transaction priority now
    "depends" : [           (array) unconfirmed transactions used as inputs for this transaction
        "transactionid",    (string) parent transaction id
       ... ]
  }, ...
}

Examples
$ ./commercium-cli getrawmempool true
{
  "842788b465515e03be660a0cc47ca34f6d59a00acd6c25360a9922ba9b3fcf5a": {
    "size": 1189,
    "fee": 0.00010000,
    "time": 1608085604,
    "height": 998200,
    "startingpriority": 1e+16,
    "currentpriority": 1.000000000042267e+16,
    "depends": [
    ]
  },
  "4fdde200bf5f7a9b566584f2740e41c9252b7898cae627f10eddac47e7dcf89d": {
    "size": 245,
    "fee": 0.00000245,
    "time": 1608085656,
    "height": 998202,
    "startingpriority": 267251395.0515464,
    "currentpriority": 267251395.0515464,
    "depends": [
    ]
  }
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawmempool", "params": [true] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getspentinfo		
```
getspentinfo

Returns the txid and index where an output is spent.

Arguments:
{
  "txid" (string) The hex string of the txid
  "index" (number) The start block height
}

Result:
{
  "txid"  (string) The transaction id
  "index"  (number) The spending input index
  ,...
}

Examples:
$ ./commercium-cli getspentinfo '{"txid": "a3071adfabd2b6e5b80628b2dbd34cd96ad8d0e94519cf3a42503c111643cc08", "index": 0}'

error code: -5
error message:
Unable to get spent info


> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getspentinfo", "params": [{"txid": "0437cd7f8525ceed2324359c2d0ba26006d92d856a9c20fa0241106ee5a597c9", "index": 0}] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### gettxout
```
gettxout "txid" n ( includemempool )

Returns details about an unspent transaction output.

Arguments:
1. "txid"       (string, required) The transaction id
2. n              (numeric, required) vout value
3. includemempool  (boolean, optional) Whether to include the mempool

Result:
{
  "bestblock" : "hash",    (string) the block hash
  "confirmations" : n,       (numeric) The number of confirmations
  "value" : x.xxx,           (numeric) The transaction value in CMM
  "scriptPubKey" : {         (json object)
     "asm" : "code",       (string)
     "hex" : "hex",        (string)
     "reqSigs" : n,          (numeric) Number of required signatures
     "type" : "pubkeyhash", (string) The type, eg pubkeyhash
     "addresses" : [          (array of string) array of Commercium addresses
        "commerciumaddress"        (string) Commercium address
        ,...
     ]
  },
  "version" : n,              (numeric) The version
  "coinbase" : true|false     (boolean) Coinbase or not
}

Examples:

Get unspent transactions
> commercium-cli listunspent

View the details
> commercium-cli gettxout "txid" 1

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxout", "params": ["txid", 1] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### gettxoutproof
```
gettxoutproof ["txid",...] ( blockhash )

Returns a hex-encoded proof that "txid" was included in a block.

NOTE: By default this function only works sometimes. This is when there is an
unspent output in the utxo for this transaction. To make it always work,
you need to maintain a transaction index, using the -txindex command line option or
specify the block in which the transaction is included in manually (by blockhash).

Return the raw transaction data.

Arguments:
1. "txids"       (string) A json array of txids to filter
    [
      "txid"     (string) A transaction hash
      ,...
    ]
2. "block hash"  (string, optional) If specified, looks for txid in the block with this hash

Result:
"data"           (string) A string that is a serialized, hex-encoded data for the proof.
```

### gettxoutsetinfo		
```
gettxoutsetinfo

Returns statistics about the unspent transaction output set.
Note this call may take some time.

Result:
{
  "height":n,     (numeric) The current block height (index)
  "bestblock": "hex",   (string) the best block hash hex
  "transactions": n,      (numeric) The number of transactions
  "txouts": n,            (numeric) The number of output transactions
  "bytes_serialized": n,  (numeric) The serialized size
  "hash_serialized": "hash",   (string) The serialized hash
  "total_amount": x.xxx          (numeric) The total amount
}

Examples:
$ ./commercium-cli gettxoutsetinfo
{
  "height": 998205,
  "bestblock": "000000e44f553941a5e0fcd961a33a0f069448be915c5f21b5d393fb393a098b",
  "transactions": 660725,
  "txouts": 870587,
  "bytes_serialized": 45250342,
  "hash_serialized": "face963c43e60de3e01da5972be7c6bc892eaad0744d786e8005df66c20c94b8",
  "total_amount": 46925381.08576597
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxoutsetinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### verifychain
```
verifychain ( checklevel numblocks )

Verifies blockchain database.

Arguments:
1. checklevel   (numeric, optional, 0-4, default=3) How thorough the block verification is.
2. numblocks    (numeric, optional, default=288, 0=all) The number of blocks to check.

Result:
true|false       (boolean) Verified or not

Examples:
$ ./commercium-cli verifychain
true

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifychain", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### verifytxoutproof
```
verifytxoutproof "proof"

Verifies that a proof points to a transaction in a block, returning the transaction it commits to
and throwing an RPC error if the block is not in our best chain

Arguments:
1. "proof"    (string, required) The hex-encoded proof generated by gettxoutproof

Result:
["txid"]      (array, strings) The txid(s) which the proof commits to, or empty array if the proof is invalid
```

==========================================================================================
==========================================================================================
## Commercium

------------------------------------------------------------------------------------------
### checkbudgets
```
checkbudgets

Initiates a budget check cycle manually

Examples:
> commercium-cli checkbudgets
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "checkbudgets", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```
------------------------------------------------------------------------------------------
### createmasternodekey
```
createmasternodekey

Create a new masternode private key

Result:
"key"    (string) Masternode private key

Examples:
> commercium-cli createmasternodekey
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createmasternodekey", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getbudgetinfo

```
getbudgetinfo ( "proposal" )

Show current masternode budgets

Arguments:
1. "proposal"    (string, optional) Proposal name

Result:
[
  {
    "Name": "xxxx",               (string) Proposal Name
    "URL": "xxxx",                (string) Proposal URL
    "Hash": "xxxx",               (string) Proposal vote hash
    "FeeHash": "xxxx",            (string) Proposal fee hash
    "BlockStart": n,              (numeric) Proposal starting block
    "BlockEnd": n,                (numeric) Proposal ending block
    "TotalPaymentCount": n,       (numeric) Number of payments
    "RemainingPaymentCount": n,   (numeric) Number of remaining payments
    "PaymentAddress": "xxxx",     (string) Commercium address of payment
    "Ratio": x.xxx,               (numeric) Ratio of yeas vs nays
    "Yeas": n,                    (numeric) Number of yea votes
    "Nays": n,                    (numeric) Number of nay votes
    "Abstains": n,                (numeric) Number of abstains
    "TotalPayment": xxx.xxx,      (numeric) Total payment amount
    "MonthlyPayment": xxx.xxx,    (numeric) Monthly payment amount
    "IsEstablished": true|false,  (boolean) Established (true) or (false)
    "IsValid": true|false,        (boolean) Valid (true) or Invalid (false)
    "IsValidReason": "xxxx",      (string) Error message, if any
    "fValid": true|false,         (boolean) Valid (true) or Invalid (false)
  }
  ,...
]

Examples:
> commercium-cli getbudgetprojection
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbudgetprojection", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

### getbudgetprojection		
```
getbudgetprojection

Show the projection of which proposals will be paid the next cycle

Result:
[
  {
    "Name": "xxxx",               (string) Proposal Name
    "URL": "xxxx",                (string) Proposal URL
    "Hash": "xxxx",               (string) Proposal vote hash
    "FeeHash": "xxxx",            (string) Proposal fee hash
    "BlockStart": n,              (numeric) Proposal starting block
    "BlockEnd": n,                (numeric) Proposal ending block
    "TotalPaymentCount": n,       (numeric) Number of payments
    "RemainingPaymentCount": n,   (numeric) Number of remaining payments
    "PaymentAddress": "xxxx",     (string) Commercium address of payment
    "Ratio": x.xxx,               (numeric) Ratio of yeas vs nays
    "Yeas": n,                    (numeric) Number of yea votes
    "Nays": n,                    (numeric) Number of nay votes
    "Abstains": n,                (numeric) Number of abstains
    "TotalPayment": xxx.xxx,      (numeric) Total payment amount
    "MonthlyPayment": xxx.xxx,    (numeric) Monthly payment amount
    "IsEstablished": true|false,  (boolean) Established (true) or (false)
    "IsValid": true|false,        (boolean) Valid (true) or Invalid (false)
    "IsValidReason": "xxxx",      (string) Error message, if any
    "fValid": true|false,         (boolean) Valid (true) or Invalid (false)
    "Alloted": xxx.xxx,           (numeric) Amount alloted in current period
    "TotalBudgetAlloted": xxx.xxx (numeric) Total alloted
  }
  ,...
]

Examples:
> commercium-cli getbudgetprojection
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbudgetprojection", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getbudgetvotes		
```
getbudgetvotes "proposal-name"

Print vote information for a budget proposal

Arguments:
1. "proposal-name":      (string, required) Name of the proposal

Result:
[
  {
    "mnId": "xxxx",        (string) Hash of the masternode's collateral transaction
    "nHash": "xxxx",       (string) Hash of the vote
    "Vote": "YES|NO",      (string) Vote cast ('YES' or 'NO')
    "nTime": xxxx,         (numeric) Time in seconds since epoch the vote was cast
    "fValid": true|false,  (boolean) 'true' if the vote is valid, 'false' otherwise
  }
  ,...
]

Examples:
> commercium-cli getbudgetvotes "test-proposal"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbudgetvotes", "params": ["test-proposal"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getmasternodecount
```
getmasternodecount

Get masternode count values

Result:
{
  "total": n,        (numeric) Total masternodes
  "stable": n,       (numeric) Stable count
  "obfcompat": n,    (numeric) Obfuscation Compatible
  "enabled": n,      (numeric) Enabled masternodes
  "inqueue": n       (numeric) Masternodes in queue
}

Examples:
> $ ./commercium-cli getmasternodecount
{
  "total": 57,
  "stable": 57,
  "obfcompat": 57,
  "enabled": 57,
  "inqueue": 51,
  "ipv4": 56,
  "ipv6": 1,
  "onion": 0
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmasternodecount", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

### getmasternodeoutputs		
```
getmasternodeoutputs

Print all masternode transaction outputs

Result:
[
  {
    "txhash": "xxxx",    (string) output transaction hash
    "outputidx": n       (numeric) output index number
  }
  ,...
]

Examples:
$ ./commercium-cli getmasternodeoutputs
[
  {
    "txhash": "be2506c0aee27728d0cdeae507dba2c8fdc17df364ffec3eb9fa3748b2361e03",
    "outputidx": 0
  },
  {
    "txhash": "a3071adfabd2b6e5b80628b2dbd34cd96ad8d0e94519cf3a42503c111643cc08",
    "outputidx": 0
  }, ....
]
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmasternodeoutputs", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

### getmasternodescores		
```
getmasternodescores ( blocks )

Print list of winning masternode by score

Arguments:
1. blocks      (numeric, optional) Show the last n blocks (default 10)

Result:
{
  xxxx: "xxxx"   (numeric : string) Block height : Masternode hash
  ,...
}

Examples:
$ ./commercium-cli getmasternodescores
{
  "998156": "d4dde256fb36642be0b03461aec57a41444b064d5870726471bfd9e1acd77815",
  "998157": "d4dde256fb36642be0b03461aec57a41444b064d5870726471bfd9e1acd77815",
  "998158": "d4dde256fb36642be0b03461aec57a41444b064d5870726471bfd9e1acd77815",
  ...
}
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmasternodescores", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		
### getmasternodestatus		
```
getmasternodestatus

Print masternode status

Result:
{
  "txhash": "xxxx",      (string) Collateral transaction hash
  "outputidx": n,        (numeric) Collateral transaction output index number
  "netaddr": "xxxx",     (string) Masternode network address
  "addr": "xxxx",        (string) Commercium address for masternode payments
  "status": "xxxx",      (string) Masternode status
  "message": "xxxx"      (string) Masternode status message
}

Examples:
$ ./commercium-cli getmasternodestatus
error code: -1
error message:
This is not a masternode

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmasternodestatus", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

### getmasternodewinners		
```
getmasternodewinners ( blocks "filter" )

Print the masternode winners for the last n blocks

Arguments:
1. blocks      (numeric, optional) Number of previous blocks to show (default: 10)
2. filter      (string, optional) Search filter matching MN address

Result (single winner):
[
  {
    "nHeight": n,           (numeric) block height
    "winner": {
      "address": "xxxx",    (string) Commercium Masternode Address
      "nVotes": n,          (numeric) Number of votes for winner
    }
  }
  ,...
]

Result (multiple winners):
[
  {
    "nHeight": n,           (numeric) block height
    "winner": [
      {
        "address": "xxxx",  (string) Commercium Masternode Address
        "nVotes": n,        (numeric) Number of votes for winner
      }
      ,...
    ]
  }
  ,...
]

Examples:
> commercium-cli getmasternodewinners
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmasternodewinners", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

### getnextsuperblock		
```
getnextsuperblock

Print the next super block height

Result:
n      (numeric) Block height of the next super block

Examples:
$ ./commercium-cli getnextsuperblock
-224058496

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnextsuperblock", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getpoolinfo
```
getpoolinfo

Returns anonymous pool-related information

Result:
{
  "current": "addr",    (string) Commercium address of current masternode
  "state": xxxx,        (string) unknown
  "entries": xxxx,      (numeric) Number of entries
  "accepted": xxxx,     (numeric) Number of entries accepted
}

Examples:

$ ./commercium-cli getpoolinfo
{
  "current_masternode": "64.227.109.235:2019",
  "state": 1,
  "entries": 0,
  "entries_accepted": 0
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getpoolinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		
### listmasternodeconf
```
listmasternodeconf ( "filter" )

Print masternode.conf in JSON format

Arguments:
1. "filter"    (string, optional) Filter search text. Partial match on alias, address, txHash, or status.

Result:
[
  {
    "alias": "xxxx",        (string) masternode alias
    "address": "xxxx",      (string) masternode IP address
    "privateKey": "xxxx",   (string) masternode private key
    "txHash": "xxxx",       (string) transaction hash
    "outputIndex": n,       (numeric) transaction output index
    "status": "xxxx"        (string) masternode status
  }
  ,...
]

Examples:
$ ./commercium-cli listmasternodeconf
[
  [
  ],
  [
  ],
  ....
]

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listmasternodeconf", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### listmasternodes
```
Get a ranked list of masternodes

Arguments:
1. "filter"    (string, optional) Filter search text. Partial match by txhash, status, or addr.

Result:
[
  {
    "rank": n,           (numeric) Masternode Rank (or 0 if not enabled)
    "txhash": "hash",    (string) Collateral transaction hash
    "outidx": n,         (numeric) Collateral transaction output index
    "status": s,         (string) Status (ENABLED/EXPIRED/REMOVE/etc)
    "addr": "addr",      (string) Masternode Commercium address
    "version": v,        (numeric) Masternode protocol version
    "lastseen": ttt,     (numeric) The time in seconds since epoch (Jan 1 1970 GMT) of the last seen
    "activetime": ttt,   (numeric) The time in seconds since epoch (Jan 1 1970 GMT) masternode has been active
    "lastpaid": ttt,     (numeric) The time in seconds since epoch (Jan 1 1970 GMT) masternode was last paid
  }
  ,...
]

Examples:
$ ./commercium-cli listmasternodes
[
  {
    "rank": 1,
    "network": "ipv4",
    "ip": "167.172.220.101",
    "txhash": "c880cc6217ccd01391e1c40799aa8edba8e588404a91974dc99f0a3fd6e075ff",
    "outidx": 0,
    "status": "ENABLED",
    "addr": "CLLbqBiJ29GE6bq9WHEFBJYjSraRE2t8Rv",
    "version": 170009,
    "lastseen": 1608083812,
    "activetime": 892253,
    "lastpaid": 1608083712
  },
  ...
]
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listmasternodes", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### masternode
```
masternode "command"...

Set of commands to execute masternode related actions
This command is depreciated, please see individual command documentation for future reference


Arguments:
1. "command"        (string or set of strings, required) The command to execute

Available commands:
  count        - Print count information of all known masternodes
  current      - Print info on current masternode winner
  debug        - Print masternode status
  genkey       - Generate new masternodeprivkey
  outputs      - Print masternode compatible outputs
  start        - Start masternode configured in commercium.conf
  start-alias  - Start single masternode by assigned alias configured in masternode.conf
  start-<mode> - Start masternodes configured in masternode.conf (<mode>: 'all', 'missing', 'disabled')
  status       - Print masternode status information
  list         - Print list of all known masternodes (see masternodelist for more info)
  list-conf    - Print masternode.conf in JSON format
  winners      - Print list of masternode winners
```		

### masternodeconnect		
```
masternodeconnect "address"

Attempts to connect to specified masternode address

Arguments:
1. "address"     (string, required) IP or net address to connect to

Examples:
> commercium-cli masternodeconnect "192.168.0.6:2019"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "masternodeconnect", "params": ["192.168.0.6:2019"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### masternodecurrent		
```
Get current masternode winner

Result:
{
  "protocol": xxxx,        (numeric) Protocol version
  "txhash": "xxxx",      (string) Collateral transaction hash
  "pubkey": "xxxx",      (string) MN Public key
  "lastseen": xxx,       (numeric) Time since epoch of last seen
  "activeseconds": xxx,  (numeric) Seconds MN has been active
}

Examples:
> commercium-cli masternodecurrent
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "masternodecurrent", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### masternodedebug		
```
Print masternode status

Result:
"status"     (string) Masternode status message

Examples:
> commercium-cli masternodedebug
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "masternodedebug", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

### mnbudget		
```
mnbudget "command"... ( "passphrase" )

Vote or show current budgets
This command is depreciated, please see individual command documentation for future reference


Available commands:
  prepare            - Prepare proposal for network by signing and creating tx
  submit             - Submit proposal for network
  vote-many          - Vote on many initiatives
  vote-alias         - Vote on an initiative
  vote               - Vote on an initiative/budget
  getvotes           - Show current masternode budgets
  getinfo            - Show current masternode budgets
  show               - Show all budgets
  projection         - Show the projection of which proposals will be paid the next cycle
  check              - Scan proposals and remove invalid
  nextblock          - Get next superblock for budget system

```		

### mnbudgetrawvote		
```
mnbudgetrawvote "masternode-tx-hash" masternode-tx-index "proposal-hash" yes|no time "vote-sig"

Compile and relay a proposal vote with provided external signature instead of signing vote internally

Arguments:
1. "masternode-tx-hash"  (string, required) Transaction hash for the masternode
2. masternode-tx-index   (numeric, required) Output index for the masternode
3. "proposal-hash"       (string, required) Proposal vote hash
4. yes|no                (boolean, required) Vote to cast
5. time                  (numeric, required) Time since epoch in seconds
6. "vote-sig"            (string, required) External signature

Result:
"status"     (string) Vote status or error message

Examples:
> commercium-cli mnbudgetrawvote
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "mnbudgetrawvote", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

### mnbudgetvote		
```
mnbudgetvote "local|many|alias" "votehash" "yes|no" ( "alias" )

Vote on a budget proposal

Arguments:
1. "mode"      (string, required) The voting mode. 'local' for voting directly from a masternode, 'many' for voting with a MN controller and casting the same vote for each MN, 'alias' for voting with a MN controller and casting a vote for a single MN
2. "votehash"  (string, required) The vote hash for the proposal
3. "votecast"  (string, required) Your vote. 'yes' to vote for the proposal, 'no' to vote against
4. "alias"     (string, required for 'alias' mode) The MN alias to cast a vote for.

Result:
{
  "overall": "xxxx",      (string) The overall status message for the vote cast
  "detail": [
    {
      "node": "xxxx",      (string) 'local' or the MN alias
      "result": "xxxx",    (string) Either 'Success' or 'Failed'
      "error": "xxxx",     (string) Error message, if vote failed
    }
    ,...
  ]
}

Examples:
> commercium-cli mnbudgetvote "local" "ed2f83cedee59a91406f5f47ec4d60bf5a7f9ee6293913c82976bd2d3a658041" "yes"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "mnbudgetvote", "params": ["local" "ed2f83cedee59a91406f5f47ec4d60bf5a7f9ee6293913c82976bd2d3a658041" "yes"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

### mnfinalbudget		
```
mnfinalbudget "command"... ( "passphrase" )
Vote or show current budgets

Available commands:
  vote-many   - Vote on a finalized budget
  vote        - Vote on a finalized budget
  show        - Show existing finalized budgets
  getvotes     - Get vote information for each finalized budget
```

### mnsync		
```
mnsync "status|reset"

Returns the sync status or resets sync.

Arguments:
1. "mode"    (string, required) either 'status' or 'reset'

Result ('status' mode):
{
  "IsBlockchainSynced": true|false,    (boolean) 'true' if blockchain is synced
  "lastMasternodeList": xxxx,        (numeric) Timestamp of last MN list message
  "lastMasternodeWinner": xxxx,      (numeric) Timestamp of last MN winner message
  "lastBudgetItem": xxxx,            (numeric) Timestamp of last MN budget message
  "lastFailure": xxxx,           (numeric) Timestamp of last failed sync
  "nCountFailures": n,           (numeric) Number of failed syncs (total)
  "sumMasternodeList": n,        (numeric) Number of MN list messages (total)
  "sumMasternodeWinner": n,      (numeric) Number of MN winner messages (total)
  "sumBudgetItemProp": n,        (numeric) Number of MN budget messages (total)
  "sumBudgetItemFin": n,         (numeric) Number of MN budget finalization messages (total)
  "countMasternodeList": n,      (numeric) Number of MN list messages (local)
  "countMasternodeWinner": n,    (numeric) Number of MN winner messages (local)
  "countBudgetItemProp": n,      (numeric) Number of MN budget messages (local)
  "countBudgetItemFin": n,       (numeric) Number of MN budget finalization messages (local)
  "RequestedMasternodeAssets": n, (numeric) Status code of last sync phase
  "RequestedMasternodeAttempt": n, (numeric) Status code of last sync attempt
}

Result ('reset' mode):
"status"     (string) 'success'

Examples:
> commercium-cli mnsync "status"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "mnsync", "params": ["status"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

### obfuscation
O	Obfuscation is not supported any more. User Zerocoin

### preparebudget		
```
preparebudget "proposal-name" "url" payment-count block-start "commercium-address" monthy-payment

Prepare proposal for network by signing and creating tx

Arguments:
1. "proposal-name":  (string, required) Desired proposal name (20 character limit)
2. "url":            (string, required) URL of proposal details (64 character limit)
3. payment-count:    (numeric, required) Total number of monthly payments
4. block-start:      (numeric, required) Starting super block height
5. "commercium-address":   (string, required) Commercium address to send payments to
6. monthly-payment:  (numeric, required) Monthly payment amount

Result:
"xxxx"       (string) proposal fee hash (if successful) or error message (if failed)

Examples:
> commercium-cli preparebudget "test-proposal" "https://commercium.net/t/test-proposal" 2 820800 "C9oc6C3dttUbv8zd7zGNq1qKBGf4ZQ1XEE" 500
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "preparebudget", "params": ["test-proposal" "https://commercium.net/t/test-proposal" 2 820800 "C9oc6C3dttUbv8zd7zGNq1qKBGf4ZQ1XEE" 500] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

### spork		
```
spork <name> [<value>]
<name> is the corresponding spork name, or 'show' to show all current spork settings, active to show which sporks are active<value> is a epoch datetime to enable or disable spork

Examples:
$ ./commercium-cli spork show
{
  "SPORK_2_SWIFTTX": 978307200,
  "SPORK_3_SWIFTTX_BLOCK_FILTERING": 1424217600,
  "SPORK_5_MAX_VALUE": 1000,
  "SPORK_7_MASTERNODE_SCANNING": 978307200,
  "SPORK_8_MASTERNODE_PAYMENT_ENFORCEMENT": 1546862400,
  "SPORK_9_MASTERNODE_BUDGET_ENFORCEMENT": 4070908800,
  "SPORK_10_MASTERNODE_PAY_UPDATED_NODES": 4070908800,
  "SPORK_11_LOCK_INVALID_UTXO": 4070908800,
  "SPORK_13_ENABLE_SUPERBLOCKS": 4070908800
}

```

### startalias		
```
startalias "aliasname"

Attempts to start an alias

Arguments:
1. "aliasname"     (string, required) alias name

Examples:
> commercium-cli startalias "mn1"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "startalias", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### startmasternode		
```
startmasternode "local|all|many|missing|disabled|alias" lockwallet ( "alias" )

Attempts to start one or more masternode(s)

Arguments:
1. set         (string, required) Specify which set of masternode(s) to start.
2. lockwallet  (boolean, required) Lock wallet after completion.
3. alias       (string) Masternode alias. Required if using 'alias' as the set.

Result: (for 'local' set):
"status"     (string) Masternode status message

Result: (for other sets):
{
  "overall": "xxxx",     (string) Overall status message
  "detail": [
    {
      "node": "xxxx",    (string) Node name or alias
      "result": "xxxx",  (string) 'success' or 'failed'
      "error": "xxxx"    (string) Error message, if failed
    }
    ,...
  ]
}

Examples:
> commercium-cli startmasternode "alias" "0" "my_mn"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "startmasternode", "params": ["alias" "0" "my_mn"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### submitbudget		Submit proposal to the network
```
submitbudget "proposal-name" "url" payment-count block-start "commercium-address" monthy-payment "fee-tx"

Submit proposal to the network

Arguments:
1. "proposal-name":  (string, required) Desired proposal name (20 character limit)
2. "url":            (string, required) URL of proposal details (64 character limit)
3. payment-count:    (numeric, required) Total number of monthly payments
4. block-start:      (numeric, required) Starting super block height
5. "commercium-address":   (string, required) Commercium address to send payments to
6. monthly-payment:  (numeric, required) Monthly payment amount
7. "fee-tx":         (string, required) Transaction hash from preparebudget command

Result:
"xxxx"       (string) proposal hash (if successful) or error message (if failed)

Examples:
> commercium-cli submitbudget "test-proposal" "https://commercium.net/t/test-proposal" 2 820800 "C9oc6C3dttUbv8zd7zGNq1qKBGf4ZQ1XEE" 500
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "submitbudget", "params": ["test-proposal" "https://commercium.net/t/test-proposal" 2 820800 "C9oc6C3dttUbv8zd7zGNq1qKBGf4ZQ1XEE" 500] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```		

==========================================================================================
==========================================================================================

## Control

### getalldata
```
getalldata "datatype transactiontype "

Arguments:
1. "datatype"     (integer, required)
                    Value of 0: Return address, balance, transactions and blockchain info
                    Value of 1: Return address, balance, blockchain info
                    Value of 2: Return transactions and blockchain info
2. "transactiontype"     (integer, optional)
                    Value of 1: Return all transactions in the last 24 hours
                    Value of 2: Return all transactions in the last 7 days
                    Value of 3: Return all transactions in the last 30 days
                    Other number: Return all transactions in the last 24 hours

Result:

Examples:

NOTE: This is heavily shorted ... it is a long file and takes a while to run.

$ ./commercium-cli getalldata 0
{
  "connectionCount": 30,
  "besttime": 1608087506,
  "bestblockhash": "000000e5a610d817969bc01f05c53091659c5a77f7b321bf09b9952d49a3ba38",
  "transparentbalance": "7282.70642376",
  "privatebalance": "0.00",
  "lockedbalance": "2700000.00",
  "totalbalance": "2707282.70642376",
  "remainingValue": 950.40000000,
  "unconfirmedbalance": "0.00",
  "immaturebalance": "88.20",
  "addressbalance": [
    {
      "CGWDz63Ua1PdPypfFE7ofmMvDXHKLwbNRA": {
        "amount": 0.00000000,
        "ismine": true
      },
      "CGXeK94Bu8Ju9sjyfU3VncGBgh1hwyCKeS": {
        "amount": 0.00000000,
        "ismine": true
      },
      "zs15l49dzdj50e4r8h93ykxzxjxygylsp8788pxf56u440yfc3d38e7qt4gfuau6xdv87myye5ek7s": {
         "amount": 0.00000000,
         "ismine": true
       },
       "zs1a56gfj8n7uax7pqvu4n3yf2h96y2dm0tty3sx6dncu50fnjzydm5adnkyylfke0hs85ejg4w6sw": {
         "amount": 0.00000000,
         "ismine": true
       }
     }
   ],
   "listtransactions": [
     {
       "account": "",
       "address": "CagACW6teJ1igEHyN4T3aAKdPxE7iR3iii",
       "category": "generate",
       "amount": 1.80000000,
       "vout": 1,
       "confirmations": 1409,
       "generated": true,
       "blockhash": "0000008868962930496053017be45fe431e9841c92260f36e8352973a4f49772",
       "blockindex": 0,
       "blocktime": 1608001452,
       "expiryheight": 0,
       "txid": "3c502339e65a03d45110fd2d4de9a1514bba1e89c260257be1f42394744c428f",
       "walletconflicts": [
       ],
       "time": 1608001452,
       "timereceived": 1608001457,
       "vjoinsplit": [
       ],
       "size": 252
     },
     {
       "account": "",
       "address": "CYvXPm7WPMuv6p2vrLiXAtAiJ9GPcbxt2j",
       "category": "immature",
       "amount": 1.80000000,
       "vout": 0,
       "confirmations": 1,
       "generated": true,
       "blockhash": "000000e5a610d817969bc01f05c53091659c5a77f7b321bf09b9952d49a3ba38",
       "blockindex": 0,
       "blocktime": 1608087506,
       "expiryheight": 0,
       "txid": "968f512e24e990134c52cf02cfe1dc95e26dfcf544412d9e398d9cbebd78219b",
       "walletconflicts": [
       ],
       "time": 1608087506,
       "timereceived": 1608087520,
       "vjoinsplit": [
       ],
       "size": 197
     }
   ]
 }


> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getalldata", "params": [0] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getinfo
```
Returns an object containing various state info.                                                                                                              

Result:                                                                                                                                                       
{                                                                                                                                                             
  "version": xxxxx,           (numeric) the server version                                                                                                    
  "protocolversion": xxxxx,   (numeric) the protocol version                                                                                                  
  "walletversion": xxxxx,     (numeric) the wallet version                                                                                                    
  "balance": xxxxxxx,         (numeric) the total Commercium balance of the wallet                                                                            
  "blocks": xxxxxx,           (numeric) the current number of blocks processed in the server                                                                  
  "timeoffset": xxxxx,        (numeric) the time offset                                                                                                       
  "connections": xxxxx,       (numeric) the number of connections                                                                                             
  "proxy": "host:port",     (string, optional) the proxy used by the server                                                                                   
  "difficulty": xxxxxx,       (numeric) the current difficulty                                                                                                
  "testnet": true|false,      (boolean) if the server is using testnet or not                                                                                 
  "keypoololdest": xxxxxx,    (numeric) the timestamp (seconds since GMT epoch) of the oldest pre-generated key in the key pool                               
  "keypoolsize": xxxx,        (numeric) how many new keys are pre-generated                                                                                   
  "unlocked_until": ttt,      (numeric) the timestamp in seconds since epoch (midnight Jan 1 1970 GMT) that the wallet is unlocked for transfers, or 0 if the wallet is locked                                                                                                                                              
  "paytxfee": x.xxxx,         (numeric) the transaction fee set in CMM/kB                                                                                     
  "relayfee": x.xxxx,         (numeric) minimum relay fee for non-free transactions in CMM/kB                                                                 
  "errors": "..."           (string) any error messages                                                                                                       
}                                                                                                                                                             

Examples:                                                                                                                                                     
$ ./commercium-cli getinfo
{
  "version": 2000350,
  "protocolversion": 170009,
  "walletversion": 60000,
  "balance": 2707333.10642376,
  "blocks": 998276,
  "timeoffset": 0,
  "connections": 30,
  "proxy": "",
  "difficulty": 1797.740017948272,
  "testnet": false,
  "keypoololdest": 1546495732,
  "keypoolsize": 101,
  "paytxfee": 0.00000000,
  "relayfee": 0.00000100,
  "errors": ""
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/    
```

### help
```
```

### stop
```
stop

Stop Commercium server.

Stops the commerciumd daemon.
```


## Disclosure

### z_getpaymentdisclosure
```
z_getpaymentdisclosure "txid" "js_index" "output_index" ("message")

Generate a payment disclosure for a given joinsplit output.

EXPERIMENTAL FEATURE

WARNING: z_getpaymentdisclosure is disabled.
To enable it, restart zcashd with the -experimentalfeatures and
-paymentdisclosure commandline options, or add these two lines
to the zcash.conf file:

experimentalfeatures=1
paymentdisclosure=1

Arguments:
1. "txid"            (string, required)
2. "js_index"        (string, required)
3. "output_index"    (string, required)
4. "message"         (string, optional)

Result:
"paymentdisclosure"  (string) Hex data string, with "zpd:" prefix.

Examples:
> commercium-cli z_getpaymentdisclosure 96f12882450429324d5f3b48630e3168220e49ab7b0f066e5c2935a6b88bb0f2 0 0 "refund"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_getpaymentdisclosure", "params": ["96f12882450429324d5f3b48630e3168220e49ab7b0f066e5c2935a6b88bb0f2", 0, 0, "refund"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/

```

### z_validatepaymentdisclosure
```
z_validatepaymentdisclosure "paymentdisclosure"

Validates a payment disclosure.

EXPERIMENTAL FEATURE

WARNING: z_validatepaymentdisclosure is disabled.
To enable it, restart zcashd with the -experimentalfeatures and
-paymentdisclosure commandline options, or add these two lines
to the zcash.conf file:

experimentalfeatures=1
paymentdisclosure=1

Arguments:
1. "paymentdisclosure"     (string, required) Hex data string, with "zpd:" prefix.

Examples:
> commercium-cli z_validatepaymentdisclosure "zpd:706462ff004c561a0447ba2ec51184e6c204..."
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_validatepaymentdisclosure", "params": ["zpd:706462ff004c561a0447ba2ec51184e6c204..."] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```


## Generating

### generate
```
generate numblocks

Mine blocks immediately (before the RPC call returns)

Note: this function can only be used on the regtest network

Arguments:
1. numblocks    (numeric) How many blocks are generated immediately.

Result
[ blockhashes ]     (array) hashes of blocks generated

Examples:

Generate 11 blocks
> commercium-cli generate 11
```

### getgenerate
```
getgenerate

Return if the server is set to generate coins or not. The default is false.
It is set with the command line argument -gen (or commercium.conf setting gen)
It can also be set with the setgenerate call.

Result
true|false      (boolean) If the server is set to generate coins or not

Examples:
> commercium-cli getgenerate
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getgenerate", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### setgenerate
```
setgenerate generate ( genproclimit )

Set 'generate' true or false to turn generation on or off.
Generation is limited to 'genproclimit' processors, -1 is unlimited.
See the getgenerate call for the current setting.

Arguments:
1. generate         (boolean, required) Set to true to turn on generation, off to turn off.
2. genproclimit     (numeric, optional) Set the processor limit for when generation is on. Can be -1 for unlimited.

Examples:

Set the generation on with a limit of one processor
> commercium-cli setgenerate true 1

Check the setting
> commercium-cli getgenerate

Turn off generation
> commercium-cli setgenerate false

Using json rpc
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setgenerate", "params": [true, 1] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```



## Mining

### getblocksubsidy
```
getblocksubsidy height

Returns block subsidy reward, taking into account the mining slow start and the founders reward, of block at index provided.

Arguments:
1. height         (numeric, optional) The block height.  If not provided, defaults to the current height of the chain.

Result:
{
  "miner" : x.xxx           (numeric) The mining reward amount in CMM.
  "founders" : x.xxx        (numeric) The founders reward amount in CMM.
}

Examples:
> commercium-cli getblocksubsidy 1000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockubsidy", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getblocktemplate
```
getblocktemplate ( "jsonrequestobject" )

If the request parameters include a 'mode' key, that is used to explicitly select between the default 'template' request or a 'proposal'.
It returns data needed to construct a block to work on.
See https://en.bitcoin.it/wiki/BIP_0022 for full specification.

Arguments:
1. "jsonrequestobject"       (string, optional) A json object in the following spec
     {
       "mode":"template"    (string, optional) This must be set to "template" or omitted
       "capabilities":[       (array, optional) A list of strings
           "support"           (string) client side supported feature, 'longpoll', 'coinbasetxn', 'coinbasevalue', 'proposal', 'serverlist', 'workid'
           ,...
         ]
     }


Result:
{
  "version" : n,                     (numeric) The block version
  "previousblockhash" : "xxxx",    (string) The hash of current highest block
  "finalsaplingroothash" : "xxxx", (string) The hash of the final sapling root
  "transactions" : [                 (array) contents of non-coinbase transactions that should be included in the next block
      {
         "data" : "xxxx",          (string) transaction data encoded in hexadecimal (byte-for-byte)
         "hash" : "xxxx",          (string) hash/id encoded in little-endian hexadecimal
         "depends" : [              (array) array of numbers
             n                        (numeric) transactions before this one (by 1-based index in 'transactions' list) that must be present in the final block if this one is
             ,...
         ],
         "fee": n,                   (numeric) difference in value between transaction inputs and outputs (in Satoshis); for coinbase transactions, this is a negative Number of the total collected block fees (ie, not including the block subsidy); if key is not present, fee is unknown and clients MUST NOT assume there isn't one
         "sigops" : n,               (numeric) total number of SigOps, as counted for purposes of block limits; if key is not present, sigop count is unknown and clients MUST NOT assume there aren't any
         "required" : true|false     (boolean) if provided and true, this transaction must be in the final block
      }
      ,...
  ],
  "coinbasetxn" : { ... },           (json object) information for coinbase transaction
  "target" : "xxxx",               (string) The hash target
  "mintime" : xxx,                   (numeric) The minimum timestamp appropriate for next block time in seconds since epoch (Jan 1 1970 GMT)
  "mutable" : [                      (array of string) list of ways the block template may be changed
     "value"                         (string) A way the block template may be changed, e.g. 'time', 'transactions', 'prevblock'
     ,...
  ],
  "noncerange" : "00000000ffffffff",   (string) A range of valid nonces
  "sigoplimit" : n,                 (numeric) limit of sigops in blocks
  "sizelimit" : n,                  (numeric) limit of block size
  "curtime" : ttt,                  (numeric) current timestamp in seconds since epoch (Jan 1 1970 GMT)
  "bits" : "xxx",                 (string) compressed target of next block
  "height" : n                      (numeric) The height of the next block
  "payee" : "xxx",                (string) required payee for the next block
  "payee_amount" : n,               (numeric) required amount to pay
  "votes" : [
                     (array) show vote candidates
        { ... }                       (json object) vote candidate
        ,...
  ],
  "masternode_payments" : true|false,         (boolean) true, if masternode payments are enabled
  "enforce_masternode_payments" : true|false  (boolean) true, if masternode payments are enforced
}

Examples:
> commercium-cli getblocktemplate
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblocktemplate", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getlocalsolps
```
getlocalsolps

Returns the average local solutions per second since this node was started.
This is the same information shown on the metrics screen (if enabled).

Result:
xxx.xxxxx     (numeric) Solutions per second average

Examples:
> commercium-cli getlocalsolps
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getlocalsolps", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getmininginfo
```
getmininginfo

Returns a json object containing mining-related information.
Result:
{
  "blocks": nnn,             (numeric) The current block
  "currentblocksize": nnn,   (numeric) The last block size
  "currentblocktx": nnn,     (numeric) The last block transaction
  "difficulty": xxx.xxxxx    (numeric) The current difficulty
  "errors": "..."            (string) Current errors
  "generate": true|false     (boolean) If the generation is on or off (see getgenerate or setgenerate calls)
  "genproclimit": n          (numeric) The processor limit for generation. -1 if no generation. (see getgenerate or setgenerate calls)
  "localsolps": xxx.xxxxx    (numeric) The average local solution rate in Sol/s since this node was started
  "networksolps": x          (numeric) The estimated network solution rate in Sol/s
  "pooledtx": n              (numeric) The size of the mem pool
  "testnet": true|false      (boolean) If using testnet or not
  "chain": "xxxx",           (string) current network name as defined in BIP70 (main, test, regtest)
}

Examples:
$ ./commercium-cli getmininginfo
{
  "blocks": 998281,
  "currentblocksize": 0,
  "currentblocktx": 0,
  "difficulty": 2015.761624414274,
  "errors": "",
  "genproclimit": -1,
  "localsolps": 0,
  "networksolps": 248024,
  "networkhashps": 248024,
  "pooledtx": 1,
  "testnet": false,
  "chain": "main",
  "generate": false
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmininginfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getnetworkhashps
```
getnetworkhashps ( blocks height )

DEPRECATED - left for backwards-compatibility. Use getnetworksolps instead.

Returns the estimated network solutions per second based on the last n blocks.
Pass in [blocks] to override # of blocks, -1 specifies over difficulty averaging window.
Pass in [height] to estimate the network speed at the time when a certain block was found.

Arguments:
1. blocks     (numeric, optional, default=120) The number of blocks, or -1 for blocks over difficulty averaging window.
2. height     (numeric, optional, default=-1) To estimate at the time of the given height.

Result:
x             (numeric) Solutions per second estimated

Examples:
> commercium-cli getnetworkhashps
> curl --user myuser
```

### getnetworksolps
```
getnetworksolps ( blocks height )

Returns the estimated network solutions per second based on the last n blocks.
Pass in [blocks] to override # of blocks, -1 specifies over difficulty averaging window.
Pass in [height] to estimate the network speed at the time when a certain block was found.

Arguments:
1. blocks     (numeric, optional, default=120) The number of blocks, or -1 for blocks over difficulty averaging window.
2. height     (numeric, optional, default=-1) To estimate at the time of the given height.

Result:
x             (numeric) Solutions per second estimated

Examples:
> commercium-cli getnetworksolps

./commercium-cli getnetworksolps
245697
./commercium-cli getnetworksolps -1
393941
./commercium-cli getnetworksolps 998282
406158


> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnetworksolps", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### prioritisetransaction
```
prioritisetransaction <txid> <priority delta> <fee delta>
Accepts the transaction into mined blocks at a higher (or lower) priority

Arguments:
1. "txid"       (string, required) The transaction id.
2. priority delta (numeric, required) The priority to add or subtract.
                  The transaction selection algorithm considers the tx as it would have a higher priority.
                  (priority of a transaction is calculated: coinage * value_in_satoshis / txsize)
3. fee delta      (numeric, required) The fee value (in satoshis) to add (or subtract, if negative).
                  The fee is not actually paid, only the algorithm for selecting transactions into a block
                  considers the transaction as it would have paid a higher (or lower) fee.

Result
true              (boolean) Returns true

Examples:
> commercium-cli prioritisetransaction "txid" 0.0 10000
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "prioritisetransaction", "params": ["txid", 0.0, 10000] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### submitblock
```
submitblock "hexdata" ( "jsonparametersobject" )

Attempts to submit new block to network.
The 'jsonparametersobject' parameter is currently ignored.
See https://en.bitcoin.it/wiki/BIP_0022 for full specification.

Arguments
1. "hexdata"    (string, required) the hex-encoded block data to submit
2. "jsonparametersobject"     (string, optional) object of optional parameters
    {
      "workid" : "id"    (string, optional) if the server provided a workid, it MUST be included with submissions
    }

Result:
"duplicate" - node already has valid copy of block
"duplicate-invalid" - node already has block, but it is invalid
"duplicate-inconclusive" - node already has block but has not validated it
"inconclusive" - node has not validated the block, it may not be on the node's current best chain
"rejected" - block was rejected as invalid
For more information on submitblock parameters and results, see: https://github.com/bitcoin/bips/blob/master/bip-0022.mediawiki#block-submission

Examples:
> commercium-cli submitblock "mydata"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "submitblock", "params": ["mydata"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```


## Network

### addnode
```
addnode "node" "add|remove|onetry"

Attempts add or remove a node from the addnode list.
Or try a connection to a node once.

Arguments:
1. "node"     (string, required) The node (see getpeerinfo for nodes)
2. "command"  (string, required) 'add' to add a node to the list, 'remove' to remove a node from the list, 'onetry' to try a connection to the node once

Examples:
> commercium-cli addnode "192.168.0.6:2018" "onetry"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "addnode", "params": ["192.168.0.6:2018", "onetry"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/

```

### clearbanned
```
clearbanned

Clear all banned IPs.

Examples:
> commercium-cli clearbanned
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "clearbanned", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### disconnectnode
```
disconnectnode "node"

Immediately disconnects from the specified node.

Arguments:
1. "node"     (string, required) The node (see getpeerinfo for nodes)

Examples:
> commercium-cli disconnectnode "192.168.0.6:2018"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "disconnectnode", "params": ["192.168.0.6:2018"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getaddednodeinfo
```
getaddednodeinfo dns ( "node" )

Returns information about the given added node, or all added nodes
(note that onetry addnodes are not listed here)
If dns is false, only a list of added nodes will be provided,
otherwise connected information will also be available.

Arguments:
1. dns        (boolean, required) If false, only a list of added nodes will be provided, otherwise connected information will also be available.
2. "node"   (string, optional) If provided, return information about this specific node, otherwise all nodes are returned.

Result:
[
  {
    "addednode" : "192.168.0.201",   (string) The node ip address
    "connected" : true|false,          (boolean) If connected
    "addresses" : [
       {
         "address" : "192.168.0.201:2018",  (string) The Commercium server host and port
         "connected" : "outbound"           (string) connection, inbound or outbound
       }
       ,...
     ]
  }
  ,...
]

Examples:
> commercium-cli getaddednodeinfo true
> commercium-cli getaddednodeinfo true "192.168.0.201"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddednodeinfo", "params": [true, "192.168.0.201"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getconnectioncount
```
getconnectioncount

Returns the number of connections to other nodes.

bResult:
n          (numeric) The connection count

Examples:
> commercium-cli getconnectioncount
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getconnectioncount", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getdeprecationinfo
```
getdeprecationinfo
Returns an object containing current version and deprecation block height. Applicable only on mainnet.

Result:
{
  "version": xxxxx,                      (numeric) the server version
  "subversion": "/MagicBean:x.y.z[-v]/",     (string) the server subversion string
  "deprecationheight": xxxxx,            (numeric) the block height at which this version will deprecate and shut down
}

Examples:
 commercium-cli getdeprecationinfo
{
  "version": 2000350,
  "subversion": "/MagicBean:2.0.3/",
  "deprecationheight": 1505160
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getdeprecationinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getnettotals
```
getnettotals

Returns information about network traffic, including bytes in, bytes out, and current time.

Result:
{
  "totalbytesrecv": n,   (numeric) Total bytes received
  "totalbytessent": n,   (numeric) Total bytes sent
  "timemillis": t        (numeric) Total cpu time
}

Examples:

$ ./commercium-cli getnettotals
{
  "totalbytesrecv": 7102341,
  "totalbytessent": 3600119,
  "timemillis": 1608090993926
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnettotals", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getnetworkinfo
```
getnetworkinfo
Returns an object containing various state info regarding P2P networking.

Result:
{
  "version": xxxxx,                      (numeric) the server version
  "subversion": "/MagicBean:x.y.z[-v]/",     (string) the server subversion string
  "protocolversion": xxxxx,              (numeric) the protocol version
  "localservices": "xxxxxxxxxxxxxxxx", (string) the services we offer to the network
  "timeoffset": xxxxx,                   (numeric) the time offset
  "connections": xxxxx,                  (numeric) the number of connections
  "networks": [                          (array) information per network
  {
    "name": "xxx",                     (string) network (ipv4, ipv6 or onion)
    "limited": true|false,               (boolean) is the network limited using -onlynet?
    "reachable": true|false,             (boolean) is the network reachable?
    "proxy": "host:port"               (string) the proxy that is used for this network, or empty if none
  }
  ,...
  ],
  "relayfee": x.xxxxxxxx,                (numeric) minimum relay fee for non-free transactions in CMM/kB
  "localaddresses": [                    (array) list of local addresses
  {
    "address": "xxxx",                 (string) network address
    "port": xxx,                         (numeric) network port
    "score": xxx                         (numeric) relative score
  }
  ,...
  ]
  "warnings": "..."                    (string) any network warnings (such as alert messages)
}

Examples:
$ ./commercium-cli getnetworkinfo
{
  "version": 2000350,
  "subversion": "/MagicBean:2.0.3/",
  "protocolversion": 170009,
  "localservices": "0000000000000005",
  "timeoffset": 0,
  "connections": 30,
  "networks": [
    {
      "name": "ipv4",
      "limited": false,
      "reachable": true,
      "proxy": "",
      "proxy_randomize_credentials": false
    },
    {
      "name": "ipv6",
      "limited": false,
      "reachable": true,
      "proxy": "",
      "proxy_randomize_credentials": false
    },
    {
      "name": "onion",
      "limited": true,
      "reachable": false,
      "proxy": "",
      "proxy_randomize_credentials": false
    }
  ],
  "relayfee": 0.00000100,
  "localaddresses": [
  ],
  "warnings": ""
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnetworkinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/

```

### getpeerinfo
```
getpeerinfo

Returns data about each connected network node as a json array of objects.

bResult:
[
  {
    "id": n,                   (numeric) Peer index
    "addr":"host:port",      (string) The ip address and port of the peer
    "addrlocal":"ip:port",   (string) local address
    "services":"xxxxxxxxxxxxxxxx",   (string) The services offered
    "lastsend": ttt,           (numeric) The time in seconds since epoch (Jan 1 1970 GMT) of the last send
    "lastrecv": ttt,           (numeric) The time in seconds since epoch (Jan 1 1970 GMT) of the last receive
    "bytessent": n,            (numeric) The total bytes sent
    "bytesrecv": n,            (numeric) The total bytes received
    "conntime": ttt,           (numeric) The connection time in seconds since epoch (Jan 1 1970 GMT)
    "timeoffset": ttt,         (numeric) The time offset in seconds
    "pingtime": n,             (numeric) ping time
    "pingwait": n,             (numeric) ping wait
    "version": v,              (numeric) The peer version, such as 170006
    "subver": "/MagicBean:x.y.z[-v]/",  (string) The string version
    "inbound": true|false,     (boolean) Inbound (true) or Outbound (false)
    "startingheight": n,       (numeric) The starting height (block) of the peer
    "banscore": n,             (numeric) The ban score
    "synced_headers": n,       (numeric) The last header we have in common with this peer
    "synced_blocks": n,        (numeric) The last block we have in common with this peer
    "inflight": [
       n,                        (numeric) The heights of blocks we're currently asking from this peer
       ...
    ]
  }
  ,...
]

Examples:

Currently there are 30 connections, so there are 30 of these (?)

$ ./commercium-cli getpeerinfo
[
  {
    "id": 2,
    "addr": "159.69.123.169:2019",
    "addrlocal": "209.181.138.85:51388",
    "services": "0000000000000005",
    "lastsend": 1608091167,
    "lastrecv": 1608091167,
    "bytessent": 143679,
    "bytesrecv": 808331,
    "conntime": 1608084909,
    "timeoffset": 0,
    "pingtime": 0.1801,
    "version": 170009,
    "subver": "/MagicBean:2.0.3/",
    "inbound": false,
    "startingheight": 998188,
    "banscore": 10,
    "synced_headers": 998289,
    "synced_blocks": 998289,
    "inflight": [
    ],
    "whitelisted": false
  },
  ...
]  

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getpeerinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### listbanned
```
listbanned

List all banned IPs/Subnets.

Examples:
$ ./commercium-cli listbanned
[
]

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listbanned", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### ping
```
ping

Requests that a ping be sent to all other nodes, to measure ping time.
Results provided in getpeerinfo, pingtime and pingwait fields are decimal seconds.
Ping command is handled in queue with all other commands, so it measures processing backlog, not just network ping.

Examples:
> commercium-cli ping
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "ping", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### setban
```
setban "ip(/netmask)" "add|remove" (bantime) (absolute)

Attempts add or remove a IP/Subnet from the banned list.

Arguments:
1. "ip(/netmask)" (string, required) The IP/Subnet (see getpeerinfo for nodes ip) with a optional netmask (default is /32 = single ip)
2. "command"      (string, required) 'add' to add a IP/Subnet to the list, 'remove' to remove a IP/Subnet from the list
3. "bantime"      (numeric, optional) time in seconds how long (or until when if [absolute] is set) the ip is banned (0 or empty means using the default time of 24h which can also be overwritten by the -bantime startup argument)
4. "absolute"     (boolean, optional) If set, the bantime must be a absolute timestamp in seconds since epoch (Jan 1 1970 GMT)

Examples:
> commercium-cli setban "192.168.0.6" "add" 86400
> commercium-cli setban "192.168.0.0/24" "add"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setban", "params": ["192.168.0.6", "add" 86400] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```


## Rawtransactions

### createrawtransaction
```
createrawtransaction [{"txid":"id","vout":n},...] {"address":amount,...} ( locktime ) ( expiryheight )

Create a transaction spending the given inputs and sending to the given addresses.
Returns hex-encoded raw transaction.
Note that the transaction's inputs are not signed, and
it is not stored in the wallet or transmitted to the network.

Arguments:
1. "transactions"        (string, required) A json array of json objects
     [
       {
         "txid":"id",    (string, required) The transaction id
         "vout":n        (numeric, required) The output number
         "sequence":n    (numeric, optional) The sequence number
       }
       ,...
     ]
2. "addresses"           (string, required) a json object with addresses as keys and amounts as values
    {
      "address": x.xxx   (numeric, required) The key is the commercium address, the value is the CMM amount
      ,...
    }
3. locktime              (numeric, optional, default=0) Raw locktime. Non-0 value also locktime-activates inputs
4. expiryheight          (numeric, optional, default=nextblockheight+20) Expiry height of transaction (if Overwinter is active)

Result:
"transaction"            (string) hex string of the transaction

Examples
> commercium-cli createrawtransaction "[{\"txid\":\"myid\",\"vout\":0}]" "{\"address\":0.01}"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createrawtransaction", "params": ["[{\"txid\":\"myid\",\"vout\":0}]", "{\"address\":0.01}"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### decoderawtransaction
```
"

Return a JSON object representing the serialized, hex-encoded transaction.

Arguments:
1. "hex"      (string, required) The transaction hex string

Result:
{
  "txid" : "id",        (string) The transaction id
  "overwintered" : bool   (boolean) The Overwintered flag
  "version" : n,          (numeric) The version
  "versiongroupid": "hex"   (string, optional) The version group id (Overwintered txs)
  "locktime" : ttt,       (numeric) The lock time
  "expiryheight" : n,     (numeric, optional) Last valid block height for mining transaction (Overwintered txs)
  "vin" : [               (array of json objects)
     {
       "txid": "id",    (string) The transaction id
       "vout": n,         (numeric) The output number
       "scriptSig": {     (json object) The script
         "asm": "asm",  (string) asm
         "hex": "hex"   (string) hex
       },
       "sequence": n     (numeric) The script sequence number
     }
     ,...
  ],
  "vout" : [             (array of json objects)
     {
       "value" : x.xxx,            (numeric) The value in CMM
       "n" : n,                    (numeric) index
       "scriptPubKey" : {          (json object)
         "asm" : "asm",          (string) the asm
         "hex" : "hex",          (string) the hex
         "reqSigs" : n,            (numeric) The required sigs
         "type" : "pubkeyhash",  (string) The type, eg 'pubkeyhash'
         "addresses" : [           (json array of string)
           "t12tvKAXCxZjSmdNbao16dKXC8tRWfcF5oc"   (string) commercium address
           ,...
         ]
       }
     }
     ,...
  ],
  "vjoinsplit" : [        (array of json objects, only for version >= 2)
     {
       "vpub_old" : x.xxx,         (numeric) public input value in CMM
       "vpub_new" : x.xxx,         (numeric) public output value in CMM
       "anchor" : "hex",         (string) the anchor
       "nullifiers" : [            (json array of string)
         "hex"                     (string) input note nullifier
         ,...
       ],
       "commitments" : [           (json array of string)
         "hex"                     (string) output note commitment
         ,...
       ],
       "onetimePubKey" : "hex",  (string) the onetime public key used to encrypt the ciphertexts
       "randomSeed" : "hex",     (string) the random seed
       "macs" : [                  (json array of string)
         "hex"                     (string) input note MAC
         ,...
       ],
       "proof" : "hex",          (string) the zero-knowledge proof
       "ciphertexts" : [           (json array of string)
         "hex"                     (string) output note ciphertext
         ,...
       ]
     }
     ,...
  ],
}

Examples:
> commercium-cli decoderawtransaction "hexstring"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "decoderawtransaction", "params": ["hexstring"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### decodescript
```
decodescript "hex"

Decode a hex-encoded script.

Arguments:
1. "hex"     (string) the hex encoded script

Result:
{
  "asm":"asm",   (string) Script public key
  "hex":"hex",   (string) hex encoded public key
  "type":"type", (string) The output type
  "reqSigs": n,    (numeric) The required signatures
  "addresses": [   (json array of string)
     "address"     (string) Commercium address
     ,...
  ],
  "p2sh","address" (string) script address
}

Examples:
> commercium-cli decodescript "hexstring"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "decodescript", "params": ["hexstring"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### fundrawtransaction
```
fundrawtransaction "hexstring"

Add inputs to a transaction until it has enough in value to meet its out value.
This will not modify existing inputs, and will add one change output to the outputs.
Note that inputs which were signed may need to be resigned after completion since in/outputs have been added.
The inputs added will not be signed, use signrawtransaction for that.

Arguments:
1. "hexstring"    (string, required) The hex string of the raw transaction

Result:
{
  "hex":       "value", (string)  The resulting raw transaction (hex-encoded string)
  "fee":       n,         (numeric) The fee added to the transaction
  "changepos": n          (numeric) The position of the added change output, or -1
}
"hex"             

Examples:

Create a transaction with no inputs
> commercium-cli createrawtransaction "[]" "{\"myaddress\":0.01}"

Add sufficient unsigned inputs to meet the output value
> commercium-cli fundrawtransaction "rawtransactionhex"

Sign the transaction
> commercium-cli signrawtransaction "fundedtransactionhex"

Send the transaction
> commercium-cli sendrawtransaction "signedtransactionhex"
```

### getrawtransaction
```
getrawtransaction "txid" ( verbose )

NOTE: By default this function only works sometimes. This is when the tx is in the mempool
or there is an unspent output in the utxo for this transaction. To make it always work,
you need to maintain a transaction index, using the -txindex command line option.

Return the raw transaction data.

If verbose=0, returns a string that is serialized, hex-encoded data for 'txid'.
If verbose is non-zero, returns an Object with information about 'txid'.

Arguments:
1. "txid"      (string, required) The transaction id
2. verbose       (numeric, optional, default=0) If 0, return a string, other return a json object

Result (if verbose is not set or set to 0):
"data"      (string) The serialized, hex-encoded data for 'txid'

Result (if verbose > 0):
{
  "hex" : "data",       (string) The serialized, hex-encoded data for 'txid'
  "txid" : "id",        (string) The transaction id (same as provided)
  "version" : n,          (numeric) The version
  "locktime" : ttt,       (numeric) The lock time
  "expiryheight" : ttt,   (numeric, optional) The block height after which the transaction expires
  "vin" : [               (array of json objects)
     {
       "txid": "id",    (string) The transaction id
       "vout": n,         (numeric)
       "scriptSig": {     (json object) The script
         "asm": "asm",  (string) asm
         "hex": "hex"   (string) hex
       },
       "sequence": n      (numeric) The script sequence number
     }
     ,...
  ],
  "vout" : [              (array of json objects)
     {
       "value" : x.xxx,            (numeric) The value in CMM
       "n" : n,                    (numeric) index
       "scriptPubKey" : {          (json object)
         "asm" : "asm",          (string) the asm
         "hex" : "hex",          (string) the hex
         "reqSigs" : n,            (numeric) The required sigs
         "type" : "pubkeyhash",  (string) The type, eg 'pubkeyhash'
         "addresses" : [           (json array of string)
           "commerciumaddress"          (string) Commercium address
           ,...
         ]
       }
     }
     ,...
  ],
  "vjoinsplit" : [        (array of json objects, only for version >= 2)
     {
       "vpub_old" : x.xxx,         (numeric) public input value in CMM
       "vpub_new" : x.xxx,         (numeric) public output value in CMM
       "anchor" : "hex",         (string) the anchor
       "nullifiers" : [            (json array of string)
         "hex"                     (string) input note nullifier
         ,...
       ],
       "commitments" : [           (json array of string)
         "hex"                     (string) output note commitment
         ,...
       ],
       "onetimePubKey" : "hex",  (string) the onetime public key used to encrypt the ciphertexts
       "randomSeed" : "hex",     (string) the random seed
       "macs" : [                  (json array of string)
         "hex"                     (string) input note MAC
         ,...
       ],
       "proof" : "hex",          (string) the zero-knowledge proof
       "ciphertexts" : [           (json array of string)
         "hex"                     (string) output note ciphertext
         ,...
       ]
     }
     ,...
  ],
  "blockhash" : "hash",   (string) the block hash
  "confirmations" : n,      (numeric) The confirmations
  "time" : ttt,             (numeric) The transaction time in seconds since epoch (Jan 1 1970 GMT)
  "blocktime" : ttt         (numeric) The block time in seconds since epoch (Jan 1 1970 GMT)
}

Examples:
> commercium-cli getrawtransaction "mytxid"
> commercium-cli getrawtransaction "mytxid" 1
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawtransaction", "params": ["mytxid", 1] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### sendrawtransaction
```
sendrawtransaction "hexstring" ( allowhighfees )

Submits raw transaction (serialized, hex-encoded) to local node and network.

Also see createrawtransaction and signrawtransaction calls.

Arguments:
1. "hexstring"    (string, required) The hex string of the raw transaction)
2. allowhighfees    (boolean, optional, default=false) Allow high fees

Result:
"hex"             (string) The transaction hash in hex

Examples:

Create a transaction
> commercium-cli createrawtransaction "[{\"txid\" : \"mytxid\",\"vout\":0}]" "{\"myaddress\":0.01}"
Sign the transaction, and get back the hex
> commercium-cli signrawtransaction "myhex"

Send the transaction (signed hex)
> commercium-cli sendrawtransaction "signedhex"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendrawtransaction", "params": ["signedhex"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### signrawtransaction
```
signrawtransaction "hexstring" ( [{"txid":"id","vout":n,"scriptPubKey":"hex","redeemScript":"hex"},...] ["privatekey1",...] sighashtype )

Sign inputs for raw transaction (serialized, hex-encoded).
The second optional argument (may be null) is an array of previous transaction outputs that
this transaction depends on but may not yet be in the block chain.
The third optional argument (may be null) is an array of base58-encoded private
keys that, if given, will be the only keys used to sign the transaction.


Arguments:
1. "hexstring"     (string, required) The transaction hex string
2. "prevtxs"       (string, optional) An json array of previous dependent transaction outputs
     [               (json array of json objects, or 'null' if none provided)
       {
         "txid":"id",             (string, required) The transaction id
         "vout":n,                  (numeric, required) The output number
         "scriptPubKey": "hex",   (string, required) script key
         "redeemScript": "hex",   (string, required for P2SH) redeem script
         "amount": value            (numeric, required) The amount spent
       }
       ,...
    ]
3. "privatekeys"     (string, optional) A json array of base58-encoded private keys for signing
    [                  (json array of strings, or 'null' if none provided)
      "privatekey"   (string) private key in base58-encoding
      ,...
    ]
4. "sighashtype"     (string, optional, default=ALL) The signature hash type. Must be one of
       "ALL"
       "NONE"
       "SINGLE"
       "ALL|ANYONECANPAY"
       "NONE|ANYONECANPAY"
       "SINGLE|ANYONECANPAY"
5.  "branchid"       (string, optional) The hex representation of the consensus branch id to sign with. This can be used to force signing with consensus rules that are ahead of the node's current height.

Result:
{
  "hex" : "value",           (string) The hex-encoded raw transaction with signature(s)
  "complete" : true|false,   (boolean) If the transaction has a complete set of signatures
  "errors" : [                 (json array of objects) Script verification errors (if there are any)
    {
      "txid" : "hash",           (string) The hash of the referenced, previous transaction
      "vout" : n,                (numeric) The index of the output to spent and used as input
      "scriptSig" : "hex",       (string) The hex-encoded signature script
      "sequence" : n,            (numeric) Script sequence number
      "error" : "text"           (string) Verification or signing error related to the input
    }
    ,...
  ]
}

Examples:
> commercium-cli signrawtransaction "myhex"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signrawtransaction", "params": ["myhex"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/

```

## Util

### createmultisig
```
createmultisig nrequired ["key",...]

Creates a multi-signature address with n signature of m keys required.
It returns a json object with the address and redeemScript.

Arguments:
1. nrequired      (numeric, required) The number of required signatures out of the n keys or addresses.
2. "keys"       (string, required) A json array of keys which are Commercium addresses or hex-encoded public keys
     [
       "key"    (string) Commercium address or hex-encoded public key
       ,...
     ]

Result:
{
  "address":"multisigaddress",  (string) The value of the new multisig address.
  "redeemScript":"script"       (string) The string value of the hex-encoded redemption script.
}

Examples:

Create a multisig address from 2 addresses
> commercium-cli createmultisig 2 "[\"t16sSauSf5pF2UkUwvKGq4qjNRzBZYqgEL5\",\"t171sgjn4YtPu27adkKGrdDwzRTxnRkBfKV\"]"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createmultisig", "params": [2, "[\"t16sSauSf5pF2UkUwvKGq4qjNRzBZYqgEL5\",\"t171sgjn4YtPu27adkKGrdDwzRTxnRkBfKV\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### estimatefee
```
estimatefee nblocks

Estimates the approximate fee per kilobyte
needed for a transaction to begin confirmation
within nblocks blocks.

Arguments:
1. nblocks     (numeric)

Result:
n :    (numeric) estimated fee-per-kilobyte

-1.0 is returned if not enough transactions and
blocks have been observed to make an estimate.

Example:
$ ./commercium-cli estimatefee 6
-1
$ ./commercium-cli estimatefee 10000
-1
```

### estimatepriority
```
estimatepriority nblocks

Estimates the approximate priority
a zero-fee transaction needs to begin confirmation
within nblocks blocks.

Arguments:
1. nblocks     (numeric)

Result:
n :    (numeric) estimated priority

-1.0 is returned if not enough transactions and
blocks have been observed to make an estimate.

Example:
$ ./commercium-cli estimatepriority 6
-1
```

### validateaddress
```
validateaddress "commerciumaddress"

Return information about the given Commercium address.

Arguments:
1. "commerciumaddress"     (string, required) The Commercium address to validate

Result:
{
  "isvalid" : true|false,         (boolean) If the address is valid or not. If not, this is the only property returned.
  "address" : "commerciumaddress",   (string) The Commercium address validated
  "scriptPubKey" : "hex",       (string) The hex encoded scriptPubKey generated by the address
  "ismine" : true|false,          (boolean) If the address is yours or not
  "isscript" : true|false,        (boolean) If the key is a script
  "pubkey" : "publickeyhex",    (string) The hex value of the raw public key
  "iscompressed" : true|false,    (boolean) If the address is compressed
  "account" : "account"         (string) DEPRECATED. The account associated with the address, "" is the default account
}

Examples:

$./commercium-cli validateaddress "CeZ5jYCWN8kZ4nbj5MDrgq633M9dyjYtTm"
{
  "isvalid": true,
  "address": "CeZ5jYCWN8kZ4nbj5MDrgq633M9dyjYtTm",
  "scriptPubKey": "76a914f24e2a844235a19984499e04327fa695a1b1861f88ac",
  "ismine": true,
  "iswatchonly": false,
  "isscript": false,
  "pubkey": "0279c65c43df58b24155de3ea665c974237017e53588cb444d6bfcde9b2f1d5662",
  "iscompressed": true,
  "account": ""
}

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "validateaddress", "params": ["1PSSGeFHDnKNxiEyFrD1wcEaHr9hrQDDWc"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### verifymessage
```
verifymessage "commerciumaddress" "signature" "message"

Verify a signed message

Arguments:
1. "commerciumaddress"    (string, required) The Commercium address to use for the signature.
2. "signature"       (string, required) The signature provided by the signer in base 64 encoding (see signmessage).
3. "message"         (string, required) The message that was signed.

Result:
true|false   (boolean) If the signature is verified or not.

Examples:

Unlock the wallet for 30 seconds
> commercium-cli walletpassphrase "mypassphrase" 30

Create the signature
> commercium-cli signmessage "t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1" "my message"

Verify the signature
> commercium-cli verifymessage "t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1" "signature" "my message"

As json rpc
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifymessage", "params": ["t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1", "signature", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### z_validateaddress
```
z_validateaddress "zaddr"

Return information about the given z address.

Arguments:
1. "zaddr"     (string, required) The z address to validate

Result:
{
  "isvalid" : true|false,      (boolean) If the address is valid or not. If not, this is the only property returned.
  "address" : "zaddr",         (string) The z address validated
  "type" : "xxxx",             (string) "sprout" or "sapling"
  "ismine" : true|false,       (boolean) If the address is yours or not
  "payingkey" : "hex",         (string) [sprout] The hex value of the paying key, a_pk
  "transmissionkey" : "hex",   (string) [sprout] The hex value of the transmission key, pk_enc
  "diversifier" : "hex",       (string) [sapling] The hex value of the diversifier, d
  "diversifiedtransmissionkey" : "hex", (string) [sapling] The hex value of pk_d
}

Examples:
> commercium-cli z_validateaddress "zcWsmqT4X2V4jgxbgiCzyrAfRT1vi1F4sn7M5Pkh66izzw8Uk7LBGAH3DtcSMJeUb2pi3W4SQF8LMKkU2cUuVP68yAGcomL"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_validateaddress", "params": ["zcWsmqT4X2V4jgxbgiCzyrAfRT1vi1F4sn7M5Pkh66izzw8Uk7LBGAH3DtcSMJeUb2pi3W4SQF8LMKkU2cUuVP68yAGcomL"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```


## Wallet

### addmultisigaddress
```
addmultisigaddress nrequired ["key",...] ( "account" )

Add a nrequired-to-sign multisignature address to the wallet.
Each key is a Commercium address or hex-encoded public key.
If 'account' is specified (DEPRECATED), assign address to that account.

Arguments:
1. nrequired        (numeric, required) The number of required signatures out of the n keys or addresses.
2. "keysobject"   (string, required) A json array of Commercium addresses or hex-encoded public keys
     [
       "address"  (string) Commercium address or hex-encoded public key
       ...,
     ]
3. "account"      (string, optional) DEPRECATED. If provided, MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.

Result:
"commerciumaddress"  (string) A Commercium address associated with the keys.

Examples:

Add a multisig address from 2 addresses
> commercium-cli addmultisigaddress 2 "[\"t16sSauSf5pF2UkUwvKGq4qjNRzBZYqgEL5\",\"t171sgjn4YtPu27adkKGrdDwzRTxnRkBfKV\"]"

As json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "addmultisigaddress", "params": [2, "[\"t16sSauSf5pF2UkUwvKGq4qjNRzBZYqgEL5\",\"t171sgjn4YtPu27adkKGrdDwzRTxnRkBfKV\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### backupwallet
```
backupwallet "destination"

Safely copies wallet.dat to destination filename

Arguments:
1. "destination"   (string, required) The destination filename, saved in the directory set by -exportdir option.

Result:
"path"             (string) The full path of the destination file

Examples:
> commercium-cli backupwallet "backupdata"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "backupwallet", "params": ["backupdata"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### dumpprivkey
```
dumpprivkey "t-addr"

Reveals the private key corresponding to 't-addr'.
Then the importprivkey can be used with this output

Arguments:
1. "t-addr"   (string, required) The transparent address for the private key

Result:
"key"         (string) The private key

Examples:
> commercium-cli dumpprivkey "myaddress"
> commercium-cli importprivkey "mykey"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpprivkey", "params": ["myaddress"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### dumpwallet
```
dumpwallet "filename"

Dumps taddr wallet keys in a human-readable format.  Overwriting an existing file is not permitted.

Arguments:
1. "filename"    (string, required) The filename, saved in folder set by commerciumd -exportdir option

Result:
"path"           (string) The full path of the destination file

Examples:
> commercium-cli dumpwallet "test"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpwallet", "params": ["test"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### encryptwallet
```
encryptwallet "passphrase"

WARNING: encryptwallet is disabled.
To enable it, restart zcashd with the -experimentalfeatures and
-developerencryptwallet commandline options, or add these two lines
to the zcash.conf file:

experimentalfeatures=1
developerencryptwallet=1

Encrypts the wallet with 'passphrase'. This is for first time encryption.
After this, any calls that interact with private keys such as sending or signing
will require the passphrase to be set prior the making these calls.
Use the walletpassphrase call for this, and then walletlock call.
If the wallet is already encrypted, use the walletpassphrasechange call.
Note that this will shutdown the server.

Arguments:
1. "passphrase"    (string) The pass phrase to encrypt the wallet with. It must be at least 1 character, but should be long.

Examples:

Encrypt you wallet
> commercium-cli encryptwallet "my pass phrase"

Now set the passphrase to use the wallet, such as for signing or sending Commercium
> commercium-cli walletpassphrase "my pass phrase"

Now we can so something like sign
> commercium-cli signmessage "commerciumaddress" "test message"

Now lock the wallet again by removing the passphrase
> commercium-cli walletlock

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "encryptwallet", "params": ["my pass phrase"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getaccount
```
```

### getaccountaddress
```
getaccount "commerciumaddress"

DEPRECATED. Returns the account associated with the given address.

Arguments:
1. "commerciumaddress"  (string, required) The Commercium address for account lookup.

Result:
"accountname"        (string) the account address

Examples:
> commercium-cli getaccount "t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaccount", "params": ["t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getaddressesbyaccount
```
getaddressesbyaccount "account"

DEPRECATED. Returns the list of addresses for the given account.

Arguments:
1. "account"  (string, required) MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.

Result:
[                     (json array of string)
  "commerciumaddress"  (string) a Commercium address associated with the given account
  ,...
]

Examples:
> commercium-cli getaddressesbyaccount "tabby"
> curl --user myusername --data-binary
```

### getbalance
```
getbalance ( "account" minconf includeWatchonly )

Returns the server's total available balance.

Arguments:
1. "account"      (string, optional) DEPRECATED. If provided, it MUST be set to the empty string "" or to the string "*", either of which will give the total available balance. Passing any other string will result in an error.
2. minconf          (numeric, optional, default=1) Only include transactions confirmed at least this many times.
3. includeWatchonly (bool, optional, default=false) Also include balance in watchonly addresses (see 'importaddress')

Result:
amount              (numeric) The total amount in CMM received for this account.

Examples:

The total amount in the wallet
> commercium-cli getbalance

The total amount in the wallet at least 5 blocks confirmed
> commercium-cli getbalance "*" 6

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbalance", "params": ["*", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getnewaddress
**Usage:** getnewaddress
```
Returns a new Commercium address for receiving payments.

Result:
    "commerciumaddress" (string) The new Commercium address

Examples:

    $ ./commercium-cli getnewaddress
    Cd6qkg5pksuUV26NwroUcQDsya5Ae6BzQh
```

### getrawchangeaddress
```
getrawchangeaddress

Returns a new Commercium address, for receiving change.
This is for use with raw transactions, NOT normal use.

Result:
"address"    (string) The address

Examples:
> commercium-cli getrawchangeaddress
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawchangeaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getreceivedbyaccount
```
getreceivedbyaccount "account" ( minconf )

DEPRECATED. Returns the total amount received by addresses with <account> in transactions with at least [minconf] confirmations.

Arguments:
1. "account"      (string, required) MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.
2. minconf          (numeric, optional, default=1) Only include transactions confirmed at least this many times.

Result:
amount              (numeric) The total amount in CMM received for this account.

Examples:

Amount received by the default account with at least 1 confirmation
> commercium-cli getreceivedbyaccount ""

Amount received at the tabby account including unconfirmed amounts with zero confirmations
> commercium-cli getreceivedbyaccount "tabby" 0

The amount with at least 6 confirmation, very safe
> commercium-cli getreceivedbyaccount "tabby" 6

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaccount", "params": ["tabby", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### getreceivedbyaddress
```
getreceivedbyaddress "commerciumaddress" ( minconf )

Returns the total amount received by the given Commercium address in transactions with at least minconf confirmations.

Arguments:
1. "commerciumaddress"  (string, required) The Commercium address for transactions.
2. minconf             (numeric, optional, default=1) Only include transactions confirmed at least this many times.

Result:
amount   (numeric) The total amount in CMM received at this address.

Examples:

The amount from transactions with at least 1 confirmation
> commercium-cli getreceivedbyaddress "t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1"

The amount including unconfirmed transactions, zero confirmations
> commercium-cli getreceivedbyaddress "t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1" 0

The amount with at least 6 confirmations, very safe
> commercium-cli getreceivedbyaddress "t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1" 6

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaddress", "params": ["t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```


### gettransaction

**Usage:** gettransaction "txid" ( includeWatchonly )

Get detailed information about in-wallet transaction

Arguments:
1. "txid" (string, required) The transaction id
2. "includeWatchonly" (bool, optional,#!/usr/bin/env python3 default=false) Whether to include watchonly addresses in balance calculation and details[]

```
Result:
{
  "amount" : x.xxx,        (numeric) The transaction amount in CMM
  "confirmations" : n,     (numeric) The number of confirmations
  "blockhash" : "hash",    (string) The block hash
  "blockindex" : xx,       (numeric) The block index
  "blocktime" : ttt,       (numeric) The time in seconds since epoch (1 Jan 1970 GMT)
  "txid" : "transactionid",   (string) The transaction id.
  "time" : ttt,            (numeric) The transaction time in seconds since epoch (1 Jan 1970 GMT)
  "timereceived" : ttt,    (numeric) The time received in seconds since epoch (1 Jan 1970 GMT)
  "details" : [
    {
      "account" : "accountname",  (string) DEPRECATED. The account name involved in the transaction, can be "" for the default account.
      "address" : "commerciumaddress",   (string) The Commercium address involved in the transaction     
      "category" : "send|receive",    (string) The category, either 'send' or 'receive'                  
      "amount" : x.xxx                  (numeric) The amount in CMM
      "vout" : n,                       (numeric) the vout value
    }
    ,...
  ],
  "vjoinsplit" : [
    {
      "anchor" : "treestateref",          (string) Merkle root of note commitment tree
      "nullifiers" : [ string, ... ]      (string) Nullifiers of input notes
      "commitments" : [ string, ... ]     (string) Note commitments for note outputs
      "macs" : [ string, ... ]            (string) Message authentication tags
      "vpub_old" : x.xxx                  (numeric) The amount removed from the transparent value pool
      "vpub_new" : x.xxx,                 (numeric) The amount added to the transparent va(not like before)lue pool
    }
    ,...
  ],
  "hex" : "data"         (string) Raw data for transaction
}
```
Examples:
TODO2020 - find and use some valid transactions - these are invalid
```
$ ./commercium-cli gettransaction "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"
$ ./commercium-cli gettransaction "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d" true
```

### getunconfirmedbalance
```
getunconfirmedbalance
Returns the server's total unconfirmed balance

Examples:
$ ./commercium-cli getunconfirmedbalance
0.00000000
```

### getwalletinfo
```
getwalletinfo
Returns an object containing various wallet state info.

Result:
{
  "walletversion": xxxxx,     (numeric) the wallet version
  "balance": xxxxxxx,         (numeric) the total confirmed balance of the wallet in CMM
  "unconfirmed_balance": xxx, (numeric) the total unconfirmed balance of the wallet in CMM
  "immature_balance": xxxxxx, (numeric) the total immature balance of the wallet in CMM
  "txcount": xxxxxxx,         (numeric) the total number of transactions in the wallet
  "keypoololdest": xxxxxx,    (numeric) the timestamp (seconds since GMT epoch) of the oldest pre-generated key in the key pool
  "keypoolsize": xxxx,        (numeric) how many new keys are pre-generated
  "unlocked_until": ttt,      (numeric) the timestamp in seconds since epoch (midnight Jan 1 1970 GMT) that the wallet is unlocked for transfers, or 0 if the wallet is locked
  "paytxfee": x.xxxx,         (numeric) the transaction fee configuration, set in CMM/kB
  "seedfp": "uint256",        (string) the BLAKE2b-256 hash of the HD seed
}

Examples:
> commercium-cli getwalletinfo
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getwalletinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### importaddress
```
importaddress "address" ( "label" rescan )

Adds an address or script (in hex) that can be watched as if it were in your wallet but cannot be used to spend.

Arguments:
1. "address"          (string, required) The address
2. "label"            (string, optional, default="") An optional label
3. rescan               (boolean, optional, default=true) Rescan the wallet for transactions

Note: This call can take minutes to complete if rescan is true.

Examples:

Import an address with rescan
> commercium-cli importaddress "myaddress"

Import using a label without rescan
> commercium-cli importaddress "myaddress" "testing" false

As a JSON-RPC call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importaddress", "params": ["myaddress", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### importprivkey
```
importprivkey "commerciumprivkey" ( "label" rescan )

Adds a private key (as returned by dumpprivkey) to your wallet.

Arguments:
1. "commerciumprivkey"   (string, required) The private key (see dumpprivkey)
2. "label"            (string, optional, default="") An optional label
3. rescan               (boolean, optional, default=true) Rescan the wallet for transactions

Note: This call can take minutes to complete if rescan is true.

Examples:

Dump a private key
> commercium-cli dumpprivkey "myaddress"

Import the private key with rescan
> commercium-cli importprivkey "mykey"

Import using a label and without rescan
> commercium-cli importprivkey "mykey" "testing" false

As a JSON-RPC call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importprivkey", "params": ["mykey", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### importwallet
```
importwallet "filename"

Imports taddr keys from a wallet dump file (see dumpwallet).

Arguments:
1. "filename"    (string, required) The wallet file

Examples:

Dump the wallet
> commercium-cli dumpwallet "nameofbackup"

Import the wallet
> commercium-cli importwallet "path/to/exportdir/nameofbackup"

Import using the json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importwallet", "params": ["path/to/exportdir/nameofbackup"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### keypoolrefill
```
keypoolrefill ( newsize )

Fills the keypool.

Arguments
1. newsize     (numeric, optional, default=100) The new keypool size

Examples:
> commercium-cli keypoolrefill
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "keypoolrefill", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### listaccounts
```
listaccounts ( minconf includeWatchonly)

DEPRECATED. Returns Object that has account names as keys, account balances as values.

Arguments:
1. minconf          (numeric, optional, default=1) Only include transactions with at least this many confirmations
2. includeWatchonly (bool, optional, default=false) Include balances in watchonly addresses (see 'importaddress')

Result:
{                      (json object where keys are account names, and values are numeric balances
  "account": x.xxx,  (numeric) The property name is the account name, and the value is the total balance for the account.
  ...
}

Examples:

List account balances where there at least 1 confirmation
> commercium-cli listaccounts

List account balances including zero confirmation transactions
> commercium-cli listaccounts 0

List account balances for 6 or more confirmations
> commercium-cli listaccounts 6

As json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaccounts", "params": [6] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

## listaddressgroupings

```
**Usage:** listaddressgroupings

Lists groups of addresses which have had their common ownership
made public by common use as inputs or as the resulting change
in past transactions

Result:
[
  [
    [
      "commerciumaddress",     (string) The commercium address
      amount,                 (numeric) The amount in CMM
      "account"             (string, optional) The account (DEPRECATED)
    ]
    ,...
  ]
  ,...
]

Examples:
$ ./commercium-cli listaddressgroupings
```

### listlockunspent
```
listlockunspent

Returns list of temporarily unspendable outputs.
See the lockunspent call to lock and unlock transactions for spending.

Result:
[
  {
    "txid" : "transactionid",     (string) The transaction id locked
    "vout" : n                      (numeric) The vout value
  }
  ,...
]

Examples:

List the unspent transactions
> commercium-cli listunspent

Lock an unspent transaction
> commercium-cli lockunspent false "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"

List the locked transactions
> commercium-cli listlockunspent

Unlock the transaction again
> commercium-cli lockunspent true "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listlockunspent", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### listreceivedbyaccount
```
listreceivedbyaccount ( minconf includeempty includeWatchonly)

DEPRECATED. List balances by account.

Arguments:
1. minconf      (numeric, optional, default=1) The minimum number of confirmations before payments are included.
2. includeempty (boolean, optional, default=false) Whether to include accounts that haven't received any payments.
3. includeWatchonly (bool, optional, default=false) Whether to include watchonly addresses (see 'importaddress').

Result:
[
  {
    "involvesWatchonly" : true,   (bool) Only returned if imported addresses were involved in transaction
    "account" : "accountname",  (string) The account name of the receiving account
    "amount" : x.xxx,             (numeric) The total amount received by addresses with this account
    "confirmations" : n           (numeric) The number of confirmations of the most recent transaction included
  }
  ,...
]

Examples:
> commercium-cli listreceivedbyaccount
> commercium-cli listreceivedbyaccount 6 true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbyaccount", "params": [6, true, true] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### listreceivedbyaddress
```
listreceivedbyaddress ( minconf includeempty includeWatchonly)

List balances by receiving address.

Arguments:
1. minconf       (numeric, optional, default=1) The minimum number of confirmations before payments are included.
2. includeempty  (numeric, optional, default=false) Whether to include addresses that haven't received any payments.
3. includeWatchonly (bool, optional, default=false) Whether to include watchonly addresses (see 'importaddress').

Result:
[
  {
    "involvesWatchonly" : true,        (bool) Only returned if imported addresses were involved in transaction
    "address" : "receivingaddress",  (string) The receiving address
    "account" : "accountname",       (string) DEPRECATED. The account of the receiving address. The default account is "".
    "amount" : x.xxx,                  (numeric) The total amount in CMM received by the address
    "confirmations" : n                (numeric) The number of confirmations of the most recent transaction included
  }
  ,...
]

Examples:
> commercium-cli listreceivedbyaddress
> commercium-cli listreceivedbyaddress 6 true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbyaddress", "params": [6, true, true] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### listsinceblock
```
listsinceblock ( "blockhash" target-confirmations includeWatchonly)

Get all transactions in blocks since block [blockhash], or all transactions if omitted

Arguments:
1. "blockhash"   (string, optional) The block hash to list transactions since
2. target-confirmations:    (numeric, optional) The confirmations required, must be 1 or more
3. includeWatchonly:        (bool, optional, default=false) Include transactions to watchonly addresses (see 'importaddress')
Result:
{
  "transactions": [
    "account":"accountname",       (string) DEPRECATED. The account name associated with the transaction. Will be "" for the default account.
    "address":"commerciumaddress",    (string) The Commercium address of the transaction. Not present for move transactions (category = move).
    "category":"send|receive",     (string) The transaction category. 'send' has negative amounts, 'receive' has positive amounts.
    "amount": x.xxx,          (numeric) The amount in CMM. This is negative for the 'send' category, and for the 'move' category for moves
                                          outbound. It is positive for the 'receive' category, and for the 'move' category for inbound funds.
    "vout" : n,               (numeric) the vout value
    "fee": x.xxx,             (numeric) The amount of the fee in CMM. This is negative and only available for the 'send' category of transactions.
    "confirmations": n,       (numeric) The number of confirmations for the transaction. Available for 'send' and 'receive' category of transactions.
    "blockhash": "hashvalue",     (string) The block hash containing the transaction. Available for 'send' and 'receive' category of transactions.
    "blockindex": n,          (numeric) The block index containing the transaction. Available for 'send' and 'receive' category of transactions.
    "blocktime": xxx,         (numeric) The block time in seconds since epoch (1 Jan 1970 GMT).
    "txid": "transactionid",  (string) The transaction id. Available for 'send' and 'receive' category of transactions.
    "time": xxx,              (numeric) The transaction time in seconds since epoch (Jan 1 1970 GMT).
    "timereceived": xxx,      (numeric) The time received in seconds since epoch (Jan 1 1970 GMT). Available for 'send' and 'receive' category of transactions.
    "comment": "...",       (string) If a comment is associated with the transaction.
    "to": "...",            (string) If a comment to is associated with the transaction.
  ],
  "lastblock": "lastblockhash"     (string) The hash of the last block
}

Examples:
> commercium-cli listsinceblock
> commercium-cli listsinceblock "000000000000000bacf66f7497b7dc45ef753ee9a7d38571037cdb1a57f663ad" 6
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listsinceblock", "params": ["000000000000000bacf66f7497b7dc45ef753ee9a7d38571037cdb1a57f663ad", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### listtransactions
```
listtransactions ( "account" count from includeWatchonly)

Returns up to 'count' most recent transactions skipping the first 'from' transactions for account 'account'.

Arguments:
1. "account"    (string, optional) DEPRECATED. The account name. Should be "*".
2. count          (numeric, optional, default=10) The number of transactions to return
3. from           (numeric, optional, default=0) The number of transactions to skip
4. includeWatchonly (bool, optional, default=false) Include transactions to watchonly addresses (see 'importaddress')

Result:
[
  {
    "account":"accountname",       (string) DEPRECATED. The account name associated with the transaction.
                                                It will be "" for the default account.
    "address":"commerciumaddress",    (string) The Commercium address of the transaction. Not present for
                                                move transactions (category = move).
    "category":"send|receive|move", (string) The transaction category. 'move' is a local (off blockchain)
                                                transaction between accounts, and not associated with an address,
                                                transaction id or block. 'send' and 'receive' transactions are
                                                associated with an address, transaction id and block details
    "amount": x.xxx,          (numeric) The amount in CMM. This is negative for the 'send' category, and for the
                                         'move' category for moves outbound. It is positive for the 'receive' category,
                                         and for the 'move' category for inbound funds.
    "vout" : n,               (numeric) the vout value
    "fee": x.xxx,             (numeric) The amount of the fee in CMM. This is negative and only available for the
                                         'send' category of transactions.
    "confirmations": n,       (numeric) The number of confirmations for the transaction. Available for 'send' and
                                         'receive' category of transactions.
    "blockhash": "hashvalue", (string) The block hash containing the transaction. Available for 'send' and 'receive'
                                          category of transactions.
    "blockindex": n,          (numeric) The block index containing the transaction. Available for 'send' and 'receive'
                                          category of transactions.
    "txid": "transactionid", (string) The transaction id. Available for 'send' and 'receive' category of transactions.
    "time": xxx,              (numeric) The transaction time in seconds since epoch (midnight Jan 1 1970 GMT).
    "timereceived": xxx,      (numeric) The time received in seconds since epoch (midnight Jan 1 1970 GMT). Available
                                          for 'send' and 'receive' category of transactions.
    "comment": "...",       (string) If a comment is associated with the transaction.
    "otheraccount": "accountname",  (string) For the 'move' category of transactions, the account the funds came
                                          from (for receiving funds, positive amounts), or went to (for sending funds,
                                          negative amounts).
    "size": n,                (numeric) Transaction size in bytes
  }
]

Examples:

List the most recent 10 transactions in the systems
> commercium-cli listtransactions

List transactions 100 to 120
> commercium-cli listtransactions "*" 20 100

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listtransactions", "params": ["*", 20, 100] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### listunspent
```
listunspent ( minconf maxconf  ["address",...] )

Returns array of unspent transaction outputs
with between minconf and maxconf (inclusive) confirmations.
Optionally filter to only include txouts paid to specified addresses.
Results are an array of Objects, each of which has:
{txid, vout, scriptPubKey, amount, confirmations}

Arguments:
1. minconf          (numeric, optional, default=1) The minimum confirmations to filter
2. maxconf          (numeric, optional, default=9999999) The maximum confirmations to filter
3. "addresses"    (string) A json array of Commercium addresses to filter
    [
      "address"   (string) Commercium address
      ,...
    ]

Result
[                   (array of json object)
  {
    "txid" : "txid",          (string) the transaction id
    "vout" : n,               (numeric) the vout value
    "generated" : true|false  (boolean) true if txout is a coinbase transaction output
    "address" : "address",  (string) the commercium address
    "account" : "account",  (string) DEPRECATED. The associated account, or "" for the default account
    "scriptPubKey" : "key", (string) the script key
    "amount" : x.xxx,         (numeric) the transaction amount in CMM
    "confirmations" : n,      (numeric) The number of confirmations
    "redeemScript" : n        (string) The redeemScript if scriptPubKey is P2SH
    "spendable" : xxx         (bool) Whether we have the private keys to spend this output
  }
  ,...
]

Examples
> commercium-cli listunspent
> commercium-cli listunspent 6 9999999 "[\"t1PGFqEzfmQch1gKD3ra4k18PNj3tTUUSqg\",\"t1LtvqCaApEdUGFkpKMM4MstjcaL4dKg8SP\"]"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspent", "params": [6, 9999999 "[\"t1PGFqEzfmQch1gKD3ra4k18PNj3tTUUSqg\",\"t1LtvqCaApEdUGFkpKMM4MstjcaL4dKg8SP\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### lockunspent
```
tim@maui:commercium-v3$ ./commercium-cli help lockunspent
lockunspent unlock [{"txid":"txid","vout":n},...]

Updates list of temporarily unspendable outputs.
Temporarily lock (unlock=false) or unlock (unlock=true) specified transaction outputs.
A locked transaction output will not be chosen by automatic coin selection, when spending Commercium.
Locks are stored in memory only. Nodes start with zero locked outputs, and the locked output list
is always cleared (by virtue of process exit) when a node stops or fails.
Also see the listunspent call

Arguments:
1. unlock            (boolean, required) Whether to unlock (true) or lock (false) the specified transactions
2. "transactions"  (string, required) A json array of objects. Each object the txid (string) vout (numeric)
     [           (json array of json objects)
       {
         "txid":"id",    (string) The transaction id
         "vout": n         (numeric) The output number
       }
       ,...
     ]

Result:
true|false    (boolean) Whether the command was successful or not

Examples:

List the unspent transactions
> commercium-cli listunspent

Lock an unspent transaction
> commercium-cli lockunspent false "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"

List the locked transactions
> commercium-cli listlockunspent

Unlock the transaction again
> commercium-cli lockunspent true "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "lockunspent", "params": [false, "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### move
```
move "fromaccount" "toaccount" amount ( minconf "comment" )

DEPRECATED. Move a specified amount from one account in your wallet to another.

Arguments:
1. "fromaccount"   (string, required) MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.
2. "toaccount"     (string, required) MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.
3. amount            (numeric) Quantity of CMM to move between accounts.
4. minconf           (numeric, optional, default=1) Only use funds with at least this many confirmations.
5. "comment"       (string, optional) An optional comment, stored in the wallet only.

Result:
true|false           (boolean) true if successful.

Examples:

Move 0.01 CMM from the default account to the account named tabby
> commercium-cli move "" "tabby" 0.01

Move 0.01 CMM timotei to akiko with a comment and funds have 6 confirmations
> commercium-cli move "timotei" "akiko" 0.01 6 "happy birthday!"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "move", "params": ["timotei", "akiko", 0.01, 6, "happy birthday!"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### sendfrom
```
sendfrom "fromaccount" "tocommerciumaddress" amount ( minconf "comment" "comment-to" )

DEPRECATED (use sendtoaddress). Sent an amount from an account to a Commercium address.
The amount is a real and is rounded to the nearest 0.00000001.

Arguments:
1. "fromaccount"       (string, required) MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.
2. "tocommerciumaddress"  (string, required) The commercium address to send funds to.
3. amount                (numeric, required) The amount in CMM (transaction fee is added on top).
4. minconf               (numeric, optional, default=1) Only use funds with at least this many confirmations.
5. "comment"           (string, optional) A comment used to store what the transaction is for.
                                     This is not part of the transaction, just kept in your wallet.
6. "comment-to"        (string, optional) An optional comment to store the name of the person or organization
                                     to which you're sending the transaction. This is not part of the transaction,
                                     it is just kept in your wallet.

Result:
"transactionid"        (string) The transaction id.

Examples:

Send 0.01 CMM from the default account to the address, must have at least 1 confirmation
> commercium-cli sendfrom "" "t1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd" 0.01

Send 0.01 from the tabby account to the given address, funds must have at least 6 confirmations
> commercium-cli sendfrom "tabby" "t1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd" 0.01 6 "donation" "seans outpost"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendfrom", "params": ["tabby", "t1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd", 0.01, 6, "donation", "seans outpost"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### sendmany
```
sendmany "fromaccount" {"address":amount,...} ( minconf "comment" ["address",...] )

Send multiple times. Amounts are decimal numbers with at most 8 digits of precision.

Arguments:
1. "fromaccount"         (string, required) MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.
2. "amounts"             (string, required) A json object with addresses and amounts
    {
      "address":amount   (numeric) The commercium address is the key, the numeric amount in CMM is the value
      ,...
    }
3. minconf                 (numeric, optional, default=1) Only use the balance confirmed at least this many times.
4. "comment"             (string, optional) A comment
5. subtractfeefromamount   (string, optional) A json array with addresses.
                           The fee will be equally deducted from the amount of each selected address.
                           Those recipients will receive less Commercium than you enter in their corresponding amount field.
                           If no addresses are specified here, the sender pays the fee.
    [
      "address"            (string) Subtract fee from this address
      ,...
    ]

Result:
"transactionid"          (string) The transaction id for the send. Only 1 transaction is created regardless of
                                    the number of addresses.

Examples:

Send two amounts to two different addresses:
> commercium-cli sendmany "" "{\"t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1\":0.01,\"t1353tsE8YMTA4EuV7dgUXGjNFf9KpVvKHz\":0.02}"

Send two amounts to two different addresses setting the confirmation and comment:
> commercium-cli sendmany "" "{\"t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1\":0.01,\"t1353tsE8YMTA4EuV7dgUXGjNFf9KpVvKHz\":0.02}" 6 "testing"

Send two amounts to two different addresses, subtract fee from amount:
> commercium-cli sendmany "" "{\"t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1\":0.01,\"t1353tsE8YMTA4EuV7dgUXGjNFf9KpVvKHz\":0.02}" 1 "" "[\"t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1\",\"t1353tsE8YMTA4EuV7dgUXGjNFf9KpVvKHz\"]"

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendmany", "params": ["", "{\"t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1\":0.01,\"t1353tsE8YMTA4EuV7dgUXGjNFf9KpVvKHz\":0.02}", 6, "testing"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### sendtoaddress
```
sendtoaddress "commerciumaddress" amount ( "comment" "comment-to" subtractfeefromamount )

Send an amount to a given address. The amount is a real and is rounded to the nearest 0.00000001

Arguments:
1. "commerciumaddress"  (string, required) The commercium address to send to.
2. "amount"      (numeric, required) The amount in CMM to send. eg 0.1
3. "comment"     (string, optional) A comment used to store what the transaction is for.
                             This is not part of the transaction, just kept in your wallet.
4. "comment-to"  (string, optional) A comment to store the name of the person or organization
                             to which you're sending the transaction. This is not part of the
                             transaction, just kept in your wallet.
5. subtractfeefromamount  (boolean, optional, default=false) The fee will be deducted from the amount being sent.
                             The recipient will receive less Commercium than you enter in the amount field.

Result:
"transactionid"  (string) The transaction id.

Examples:
> commercium-cli sendtoaddress "t1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd" 0.1
> commercium-cli sendtoaddress "t1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd" 0.1 "donation" "seans outpost"
> commercium-cli sendtoaddress "t1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd" 0.1 "" "" true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendtoaddress", "params": ["t1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd", 0.1, "donation", "seans outpost"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### setaccount
```
setaccount "commerciumaddress" "account"

DEPRECATED. Sets the account associated with the given address.

Arguments:
1. "commerciumaddress"  (string, required) The Commercium address to be associated with an account.
2. "account"         (string, required) MUST be set to the empty string "" to represent the default account. Passing any other string will result in an error.

Examples:
> commercium-cli setaccount "t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1" "tabby"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setaccount", "params": ["t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1", "tabby"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### settxfee
```
settxfee amount

Set the transaction fee per kB.

Arguments:
1. amount         (numeric, required) The transaction fee in CMM/kB rounded to the nearest 0.00000001

Result
true|false        (boolean) Returns true if successful

Examples:
> commercium-cli settxfee 0.00001
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "settxfee", "params": [0.00001] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### signmessage
```
signmessage "commerciumaddress" "message"

Sign a message with the private key of an address

Arguments:
1. "commerciumaddress"  (string, required) The Commercium address to use for the private key.
2. "message"         (string, required) The message to create a signature of.

Result:
"signature"          (string) The signature of the message encoded in base 64

Examples:

Unlock the wallet for 30 seconds
> commercium-cli walletpassphrase "mypassphrase" 30

Create the signature
> commercium-cli signmessage "t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1" "my message"

Verify the signature
> commercium-cli verifymessage "t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1" "signature" "my message"

As json rpc
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signmessage", "params": ["t14oHp2v54vfmdgQ3v3SNuQga8JKHTNi2a1", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### z_exportkey
```
z_exportkey "zaddr"

Reveals the zkey corresponding to 'zaddr'.
Then the z_importkey can be used with this output

Arguments:
1. "zaddr"   (string, required) The zaddr for the private key

Result:
"key"                  (string) The private key

Examples:
> commercium-cli z_exportkey "myaddress"
> commercium-cli z_importkey "mykey"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_exportkey", "params": ["myaddress"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### z_exportviewingkey
```
z_exportviewingkey "zaddr"

Reveals the viewing key corresponding to 'zaddr'.
Then the z_importviewingkey can be used with this output

Arguments:
1. "zaddr"   (string, required) The zaddr for the viewing key

Result:
"vkey"                  (string) The viewing key

Examples:
> commercium-cli z_exportviewingkey "myaddress"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_exportviewingkey", "params": ["myaddress"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### z_exportwallet
```
z_exportwallet "filename"

Exports all wallet keys, for taddr and zaddr, in a human-readable format.  Overwriting an existing file is not permitted.

Arguments:
1. "filename"    (string, required) The filename, saved in folder set by commerciumd -exportdir option

Result:
"path"           (string) The full path of the destination file

Examples:
> commercium-cli z_exportwallet "test"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_exportwallet", "params": ["test"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### z_getbalance

**Usage:** z_getbalance "address" ( minconf )

Returns the balance of a taddr or zaddr belonging to the node's wallet.

CAUTION: If the wallet has only an incoming viewing key for this address, then spends cannot be
detected, and so the returned balance may be larger than the actual balance.

Arguments:
1. "address" (string) The selected address. It may be a transparent or private address.
2. minconf (numeric, optional, default=1) Only include transactions confirmed at least this many times.

Result:

amount (numeric) The total amount in CMM received for this address.

TODO2020 - use actual addresses here
Examples:

The total amount received by address "myaddress"

`$ ./commercium-cli z_getbalance "myaddress"`

The total amount received by address "myaddress" at least 5 blocks confirmed

`$ ./commercium-cli z_getbalance "myaddress" 5`

### z_getnewaddress

**Usage:** z_getnewaddress ( type )

Returns a new shielded address for receiving payments.

With no arguments, returns a Sapling address.

Arguments:
1. "type" (string, optional, default="sapling") The type of address. One of ["sprout", "sapling"].

Result:

"zcashaddress" (string) The new shielded address.

Examples:
```
$ ./commercium-cli z_getnewaddress
$ ./commercium-cli z_getnewaddress sapling
```

### z_getoperationresult

**Usage:** z_getoperationresult (["operationid", ... ])

Retrieve the result and status of an operation which has finished, and then remove the operation from memory.

Arguments:
1. "operationid"         (array, optional) A list of operation ids we are interested in.  If not provided, examine all operations known to the node.

Result:
"    [object, ...]"      (array) A list of JSON objects

Examples:
```
> commercium-cli z_getoperationresult '["operationid", ... ]'
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_getoperationresult", "params": ['["operationid", ... ]'] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### z_getoperationstatus

**Usage:** z_getoperationstatus (["operationid", ... ])

Get operation status and any associated result or error data. The operation will remain in memory.

Arguments:
1. "operationid" (array, optional) A list of operation ids we are interested in. If not provided, examine all operations known to the node.

Result:

" [object, ...]" (array) A list of JSON objects

Examples:
```
$ ./commercium-cli z_getoperationstatus '["opid-e21030af-048b-48b7-8408-6ee5417e280d"]'
```

### z_gettotalbalance
```
z_gettotalbalance ( minconf includeWatchonly )

Return the total value of funds stored in the node's wallet.

CAUTION: If the wallet contains any addresses for which it only has incoming viewing keys,
the returned private balance may be larger than the actual balance, because spends cannot
be detected with incoming viewing keys.

Arguments:
1. minconf          (numeric, optional, default=1) Only include private and transparent transactions confirmed at least this many times.
2. includeWatchonly (bool, optional, default=false) Also include balance in watchonly addresses (see 'importaddress' and 'z_importviewingkey')

Result:
{
  "transparent": xxxxx,     (numeric) the total balance of transparent funds
  "private": xxxxx,         (numeric) the total balance of private funds (in both Sprout and Sapling addresses)
  "total": xxxxx,           (numeric) the total balance of both transparent and private funds
}

Examples:

The total amount in the wallet
> commercium-cli z_gettotalbalance

The total amount in the wallet at least 5 blocks confirmed
> commercium-cli z_gettotalbalance 5

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_gettotalbalance", "params": [5] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### z_importkey
```
z_importkey "zkey" ( rescan startHeight )

Adds a zkey (as returned by z_exportkey) to your wallet.

Arguments:
1. "zkey"             (string, required) The zkey (see z_exportkey)
2. rescan             (string, optional, default="whenkeyisnew") Rescan the wallet for transactions - can be "yes", "no" or "whenkeyisnew"
3. startHeight        (numeric, optional, default=0) Block height to start rescan from

Note: This call can take minutes to complete if rescan is true.

Examples:

Export a zkey
> commercium-cli z_exportkey "myaddress"

Import the zkey with rescan
> commercium-cli z_importkey "mykey"

Import the zkey with partial rescan
> commercium-cli z_importkey "mykey" whenkeyisnew 30000

Re-import the zkey with longer partial rescan
> commercium-cli z_importkey "mykey" yes 20000

As a JSON-RPC call
```

### z_importviewingkey
```
z_importviewingkey "vkey" ( rescan startHeight )

Adds a viewing key (as returned by z_exportviewingkey) to your wallet.

Arguments:
1. "vkey"             (string, required) The viewing key (see z_exportviewingkey)
2. rescan             (string, optional, default="whenkeyisnew") Rescan the wallet for transactions - can be "yes", "no" or "whenkeyisnew"
3. startHeight        (numeric, optional, default=0) Block height to start rescan from

Note: This call can take minutes to complete if rescan is true.

Examples:

Import a viewing key
> commercium-cli z_importviewingkey "vkey"

Import the viewing key without rescan
> commercium-cli z_importviewingkey "vkey", no

Import the viewing key with partial rescan
> commercium-cli z_importviewingkey "vkey" whenkeyisnew 30000

Re-import the viewing key with longer partial rescan
> commercium-cli z_importviewingkey "vkey" yes 20000

As a JSON-RPC call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_importviewingkey", "params": ["vkey", "no"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### z_importwallet
```
z_importwallet "filename"

Imports taddr and zaddr keys from a wallet export file (see z_exportwallet).

Arguments:
1. "filename"    (string, required) The wallet file

Examples:

Dump the wallet
> commercium-cli z_exportwallet "nameofbackup"

Import the wallet
> commercium-cli z_importwallet "path/to/exportdir/nameofbackup"

Import using the json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_importwallet", "params": ["path/to/exportdir/nameofbackup"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

## z_listaddresses

**Usage:** z_listaddresses ( includeWatchonly )

Returns the list of Sprout and Sapling shielded addresses belonging to the wallet.

Arguments:
1. includeWatchonly (bool, optional, default=false) Also include watchonly addresses (see 'z_importviewingkey')

Result:
    [ (json array of string) "zaddr" (string) a zaddr belonging to the wallet ,... ]

Examples:
```
$ ./commercium-cli z_listaddresses
```

### z_listoperationids
```
z_listoperationids

Returns the list of operation ids currently known to the wallet.

Arguments:
1. "status"         (string, optional) Filter result by the operation's state e.g. "success".

Result:
[                     (json array of string)
  "operationid"       (string) an operation id belonging to the wallet
  ,...
]

Examples:
$ ./commercium-cli z_listoperationids
[
]

> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_listoperationids", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/

```

### z_listreceivedbyaddress
```
z_listreceivedbyaddress "address" ( minconf )

Return a list of amounts received by a zaddr belonging to the node's wallet.

Arguments:
1. "address"        (string) The private address.
2. minconf          (numeric, optional, default=1) Only include transactions confirmed at least this many times.

Result:
{
  "txid": "txid",           (string) the transaction id
  "amount": xxxxx,         (numeric) the amount of value in the note
  "memo": xxxxx,           (string) hexadecimal string representation of memo field
  "jsindex" (sprout) : n,     (numeric) the joinsplit index
  "jsoutindex" (sprout) : n,     (numeric) the output index of the joinsplit
  "outindex" (sapling) : n,     (numeric) the output index
  "change": true|false,    (boolean) true if the address that received the note is also one of the sending addresses
}

Examples:
> commercium-cli z_listreceivedbyaddress "ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_listreceivedbyaddress", "params": ["ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### z_listunspent
```
z_listunspent ( minconf maxconf includeWatchonly ["zaddr",...] )

Returns array of unspent shielded notes with between minconf and maxconf (inclusive) confirmations.
Optionally filter to only include notes sent to specified addresses.
When minconf is 0, unspent notes with zero confirmations are returned, even though they are not immediately spendable.
Results are an array of Objects, each of which has:
{txid, jsindex, jsoutindex, confirmations, address, amount, memo} (Sprout)
{txid, outindex, confirmations, address, amount, memo} (Sapling)

Arguments:
1. minconf          (numeric, optional, default=1) The minimum confirmations to filter
2. maxconf          (numeric, optional, default=9999999) The maximum confirmations to filter
3. includeWatchonly (bool, optional, default=false) Also include watchonly addresses (see 'z_importviewingkey')
4. "addresses"      (string) A json array of zaddrs (both Sprout and Sapling) to filter on.  Duplicate addresses not allowed.
    [
      "address"     (string) zaddr
      ,...
    ]

Result
[                             (array of json object)
  {
    "txid" : "txid",          (string) the transaction id
    "jsindex" (sprout) : n,       (numeric) the joinsplit index
    "jsoutindex" (sprout) : n,       (numeric) the output index of the joinsplit
    "outindex" (sapling) : n,       (numeric) the output index
    "confirmations" : n,       (numeric) the number of confirmations
    "spendable" : true|false,  (boolean) true if note can be spent by wallet, false if address is watchonly
    "address" : "address",    (string) the shielded address
    "amount": xxxxx,          (numeric) the amount of value in the note
    "memo": xxxxx,            (string) hexademical string representation of memo field
    "change": true|false,     (boolean) true if the address that received the note is also one of the sending addresses
  }
  ,...
]

Examples
> commercium-cli z_listunspent
> commercium-cli z_listunspent 6 9999999 false "[\"ztbx5DLDxa5ZLFTchHhoPNkKs57QzSyib6UqXpEdy76T1aUdFxJt1w9318Z8DJ73XzbnWHKEZP9Yjg712N5kMmP4QzS9iC9\",\"ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf\"]"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_listunspent", "params": [6 9999999 false "[\"ztbx5DLDxa5ZLFTchHhoPNkKs57QzSyib6UqXpEdy76T1aUdFxJt1w9318Z8DJ73XzbnWHKEZP9Yjg712N5kMmP4QzS9iC9\",\"ztfaW34Gj9FrnGUEf833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztecW1SjxA7JrmAXKJhxhj3vDNEpVCQoSvVoSpmbhtjf\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

### z_mergetoaddress
```
z_mergetoaddress ["fromaddress", ... ] "toaddress" ( fee ) ( transparent_limit ) ( shielded_limit ) ( memo )

WARNING: z_mergetoaddress is disabled.
To enable it, restart zcashd with the -experimentalfeatures and
-zmergetoaddress commandline options, or add these two lines
to the zcash.conf file:

experimentalfeatures=1
zmergetoaddress=1

Merge multiple UTXOs and notes into a single UTXO or note.  Coinbase UTXOs are ignored; use `z_shieldcoinbase`
to combine those into a single note.

This is an asynchronous operation, and UTXOs selected for merging will be locked.  If there is an error, they
are unlocked.  The RPC call `listlockunspent` can be used to return a list of locked UTXOs.

The number of UTXOs and notes selected for merging can be limited by the caller.  If the transparent limit
parameter is set to zero, and Overwinter is not yet active, the -mempooltxinputlimit option will determine the
number of UTXOs.  After Overwinter has activated -mempooltxinputlimit is ignored and having a transparent
input limit of zero will mean limit the number of UTXOs based on the size of the transaction.  Any limit is
constrained by the consensus rule defining a maximum transaction size of 100000 bytes before Sapling, and 2000000
bytes once Sapling activates.

Arguments:
1. fromaddresses         (array, required) A JSON array with addresses.
                         The following special strings are accepted inside the array:
                             - "ANY_TADDR":   Merge UTXOs from any taddrs belonging to the wallet.
                             - "ANY_SPROUT":  Merge notes from any Sprout zaddrs belonging to the wallet.
                             - "ANY_SAPLING": Merge notes from any Sapling zaddrs belonging to the wallet.
                         If a special string is given, any given addresses of that type will be counted as duplicates and cause an error.
    [
      "address"          (string) Can be a taddr or a zaddr
      ,...
    ]
2. "toaddress"           (string, required) The taddr or zaddr to send the funds to.
3. fee                   (numeric, optional, default=0.0001) The fee amount to attach to this transaction.
4. transparent_limit     (numeric, optional, default=50) Limit on the maximum number of UTXOs to merge.  Set to 0 to use node option -mempooltxinputlimit (before Overwinter), or as many as will fit in the transaction (after Overwinter).
5. shielded_limit        (numeric, optional, default=20 Sprout or 200 Sapling Notes) Limit on the maximum number of notes to merge.  Set to 0 to merge as many as will fit in the transaction.
6. "memo"                (string, optional) Encoded as hex. When toaddress is a zaddr, this will be stored in the memo field of the new note.

Result:
{
  "remainingUTXOs": xxx               (numeric) Number of UTXOs still available for merging.
  "remainingTransparentValue": xxx    (numeric) Value of UTXOs still available for merging.
  "remainingNotes": xxx               (numeric) Number of notes still available for merging.
  "remainingShieldedValue": xxx       (numeric) Value of notes still available for merging.
  "mergingUTXOs": xxx                 (numeric) Number of UTXOs being merged.
  "mergingTransparentValue": xxx      (numeric) Value of UTXOs being merged.
  "mergingNotes": xxx                 (numeric) Number of notes being merged.
  "mergingShieldedValue": xxx         (numeric) Value of notes being merged.
  "opid": xxx                         (string) An operationid to pass to z_getoperationstatus to get the result of the operation.
}

Examples:
> commercium-cli z_mergetoaddress '["ANY_SAPLING", "t1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd"]' ztestsapling19rnyu293v44f0kvtmszhx35lpdug574twc0lwyf4s7w0umtkrdq5nfcauxrxcyfmh3m7slemqsj
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "z_mergetoaddress", "params": [["ANY_SAPLING", "t1M72Sfpbz1BPpXFHz9m3CdqATR44Jvaydd"], "ztestsapling19rnyu293v44f0kvtmszhx35lpdug574twc0lwyf4s7w0umtkrdq5nfcauxrxcyfmh3m7slemqsj"] }' -H 'content-type: text/plain;' http://127.0.0.1:12019/
```

## z_sendmany
**Usage:** z_sendmany "fromaddress" [{"address":... ,"amount":...},...] ( minconf ) ( fee )

Send multiple times. Amounts are decimal numbers with at most 8 digits of precision. Change generated from a taddr flows to a new taddr address, while change generated from a zaddr returns to itself. When sending coinbase UTXOs to a zaddr, change is not allowed. The entire value of the UTXO(s) must be consumed. Before Sapling activates, the maximum number of zaddr outputs is 54 due to transaction size limits.

Arguments:
1. "fromaddress" (string, required) The taddr or zaddr to send the funds from.
2. "amounts" (array, required) An array of json objects representing the amounts to send.
    [{
       "address":address (string, required) The address is a taddr or zaddr
       "amount":amount (numeric, required) The numeric amount in CMM is the value
       "memo":memo (string, optional) If the address is a zaddr, raw data represented in hexadecimal string format
      }, ... ]
3. minconf (numeric, optional, default=1) Only use funds confirmed at least this many times.
4. fee (numeric, optional, default=0.0001) The fee amount to attach to this transaction.

Result:

"operationid" (string) An operationid to pass to z_getoperationstatus to get the result of the operation.

Examples:
```
$ ./commercium-cli z_sendmany "CeZ5jYCWN8q633M9dykZ4nbj5MDrgjYtTm" '[{"address": "ztfaW34Gj9FrnGUEfcW1SjxA7JrmAXKJh833ywDVL62NWXBM81u6EQnM6VR45eYnXhwztexhj3vDNEpVCQoSvVoSpmbhtjf" ,"amount": 5.0}]'
```

### z_shieldcoinbase

**Usage:** z_shieldcoinbase "fromaddress" "tozaddress" ( fee ) ( limit )

Shield transparent coinbase funds by sending to a shielded zaddr. This is an asynchronous operation and utxos selected for shielding will be locked. If there is an error, they are unlocked. The RPC call listlockunspent can be used to return a list of locked utxos. The number of coinbase utxos selected for shielding can be limited by the caller. If the limit parameter is set to zero, and Overwinter is not yet active, the -mempooltxinputlimit option will determine the number of uxtos. Any limit is constrained by the consensus rule defining a maximum transaction size of 100000 bytes before Sapling, and 2000000 bytes once Sapling activates.


Arguments:
1. "fromaddress"         (string, required) The address is a taddr or "*" for all taddrs belonging to the wallet.
2. "toaddress"           (string, required) The address is a zaddr.
3. fee                   (numeric, option./commercium-cli getbalance
2707005.50642376
tim@maui:commercium-v3$
al, default=0.0001) The fee amount to attach to this transaction.
4. limit                 (numeric, optional, default=50) Limit on the maximum number of utxos to shield.  Set to 0 to use node option -mempooltxinputlimit (before Overwinter), or as many as will fit in the transaction (after Overwinter).

```
Result:
{
  "remainingUTXOs": xxx   (numeric) Number of coinbase utxos still available for shielding.
  "remainingValue": xxx   (numeric) Value of coinbase utxos still available for shielding.
  "shieldingUTXOs": xxx   (numeric) Number of coinbase utxos being shielded.
  "shieldingValue": xxx   (numeric) Value of coinbase utxos being shielded.
  "opid": xxx             (string) An operationid to pass to z_getoperationstatus to get the result of the operation.
}
```

Examples:
```
$ ./commercium-cli z_shieldcoinbase "*" "zcE1ZcsGbFnhLwLerHkqQmQtizK6wyGeJRAViDxwxEuJpLj6rpPZzcantBxrUwBike2gqfSWRP4CwvEUjjUoaA7HZ3RSLNH" 0.0001 5000
{
  "remainingUTXOs": 0,
  "remainingValue": 0.00000000,
  "shieldingUTXOs": 3,
  "shieldingValue": 5.40000000,
  "opid": "opid-497674fc-c117-4d48-aa48-e1403e813cf4"
}
```

### zcbenchmark
```
zcbenchmark benchmarktype samplecount

Runs a benchmark of the selected type samplecount times,
returning the running times of each sample.

Output: [
  {
    "runningtime": runningtime
  },
  {
    "runningtime": runningtime
  }
  ...
]
```

### zcrawjoinsplit
```
zcbenchmark benchmarktype samplecount

Runs a benchmark of the selected type samplecount times,
returning the running times of each sample.

Output: [
  {
    "runningtime": runningtime
  },
  {
    "runningtime": runningtime
  }
  ...
]

tim@maui:commercium-v3$ ./commercium-cli help zcrawjoinsplit
zcrawjoinsplit rawtx inputs outputs vpub_old vpub_new
  inputs: a JSON object mapping {note: zcsecretkey, ...}
  outputs: a JSON object mapping {zcaddr: value, ...}

DEPRECATED. Splices a joinsplit into rawtx. Inputs are unilaterally confidential.
Outputs are confidential between sender/receiver. The vpub_old and
vpub_new values are globally public and move transparent value into
or out of the confidential value store, respectively.

Note: The caller is responsible for delivering the output enc1 and
enc2 to the appropriate recipients, as well as signing rawtxout and
ensuring it is mined. (A future RPC call will deliver the confidential
payments in-band on the blockchain.)

Output: {
  "encryptednote1": enc1,
  "encryptednote2": enc2,
  "rawtxn": rawtxout
}
```

### zcrawkeygen
```
zcrawkeygen

DEPRECATED. Generate a zcaddr which can send and receive confidential values.

Output: {
  "zcaddress": zcaddr,
  "zcsecretkey": zcsecretkey,
  "zcviewingkey": zcviewingkey,
}
```

### zcrawreceive
```
zcrawreceive zcsecretkey encryptednote

DEPRECATED. Decrypts encryptednote and checks if the coin commitments
are in the blockchain as indicated by the "exists" result.

Output: {
  "amount": value,
  "note": noteplaintext,
  "exists": exists
}
```

### zcsamplejoinsplit
```
zcsamplejoinsplit

Perform a joinsplit and return the JSDescription.
```
