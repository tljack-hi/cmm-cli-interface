In the setup we will talk of two computers: "wallet computer" and "masternode server (MN server)". The "wallet computer" is the computer that has your wallet and coins. The "masternode computer" will be a VPS like the droplets offered by Digital ocean or JaguarPC.

In this example, I assume both computers are linux computers. Linux rules.

There are 7 steps to create the MN

Step 1) Create the MN server
From this we want to note the root password and the ipaddress

Step 2) Setup passwordless ssh
In this step we setup a secure way to easily access the MN server.
Here we use the root password and ipaddress.

Step 3) Prepare the MN server

Step 4) Setup the wallet computer
Here we move the 100000 CMM to its new address.
Here we need **masternodeprivkey** for the next step.

Step 5) Finish the MN server

Step 6) Wait Patiently

Step 7) Start MN on wallet computer


## Step 1) Create the MN server

Here we set up the MN server and when we are done your are going to want to note down in a safe place:
1) root password
2) ip address

This example uses DigitalOcean so you need to set up an account with them. They are going to ask you to create a project, create one (you only need one even if you have more than one masternode servers). So pick some project name. I call mine "I Believe"

DigitalOcean calls a VPS a "droplet", so I use this terminology. DigitalOcean charges US$5 per droplet and you will want one for each masternode you intend to create. But for now, create one. There is a Create button in the top right. Select Droplets "create cloud servers".

Now, create the droplet. There is a green <Create> dropdown at the top of the screen.

Select Ubuntu but change it to 18.04 (LTS) x64 (I have not confirmed 20.04 works).
Select $5/mo plan

Pick any datacenter region you like

For authentication, select the Password option.
Pick a long complex password OR use their generated one (it appears on the drop down if you hover your mouse over the password area).

For this discussion, the password is ZAnthonyIsKingZ. For the real password, write this down and save it. You will need it later.

Choose a logical hostname. I do it by the MN number so this one is MN01. I also put the MN01 in the tags. You don't need backups.

Press the Create Droplet button

The system will build the droplet. Once it is done it will give you the ip address that looks something like 123.123.123.123 - this is the other very important piece of information you want to write down and save in a safe spot. We will use this in the next step.

For this example, let's say the IP address is 123.123.123.123.

So at this point we have two peices of important information 1) The password 2) The IP address. We will use these in the next step.

For this example, the password is ZAnthonyIsKingZ and the IP address is 123.123.123.123

<hr>

## Step 2) Setup passwordless ssh

In this step we setup a secure way to easily access the MN server. Here we use the root password and ipaddress.

There are many good how-to websites on this. If you want more information I recommend: https://linoxide.com/how-tos/ssh-login-with-public-key/

If you know what an rsa is and have one already generated, then you don't need a new one. You can see if you have one by running the command:

`ls -al ~/.ssh/id_*.pub`

If something is there then you can use that and you can skip to ### Copy Key to Masternode Server

If nothing is found then you need to create one. And we do that next

### Create a New Key

The important thing you will need to do is create and save off somewhere a passphrase. This is usually some long wistful sentence like:

     Anthony got married which is really great we wish him and his wife the best

You will need to enter a passphrase and remember it. Write it down and save it somewhere. You won't need it until your computer and all your backups blow up. But it is good to have.

To create a new key use:

`ssh-keygen -t rsa -b 4096`

It will ask several questions and just hit <return> UNTIL it asks for the passphrase and to repeat the passphrase - then you copy in the passphrase you have decided on above and saved somewhere.

.... a lot of junk gets printed. you can save that somewhere ... or not.

Now we copy the key to the masternode server.

### Copy Key to Masternode Server

But before we do that. We need to register the ipaddress with your computer. So run the command:

`ssh root@123.123.123.123`

type "yes" when it asks to confirm the authenticity of the host, hit return and it will ask for a password. Hit Ctrl+C and kill the command.

This registered your masternode server ipaddress with your wallet computer.

Now we copy the secret code to the droplet using this:

`ssh-copy-id root@123.123.123.123`

Some junk will come up and it will ask for a password. This is the masternode server password that we wrote down in Step 1. For this example it is ZAnthonyIsKingZ but use your masternode server password. Use your IP address and password, not mine.

Now you should be able to safely login without a password (cool!):

`ssh root@123.123.123.123`

If you are like me, the prompt for the masternode server will be something like:

`root@mn1:~# `

Now exit from the masternode server by either typing `exit` or use the key combination `ctrl+d`

<hr>

## Step 3) Prepare the MN server

The first step is to update the droplet to the most recent versions. So run this command (again use your own IP address):

`ssh root@123.123.123.123 "apt-get -y update; apt-get -y upgrade; apt-get -y dist-upgrade; apt -y autoremove; reboot"``

The system will put up a menu about a new version of boot grub .. I select the 1st item "install the package maintainer's ...." whatever up arrow and press return.

wait a few minutes while the droplet reboots. Then login:

`ssh root@123.123.123.123`

To setup your masternode server, copy and paste these sections of commands one at a time. You can do each section all at once.

So select the section of code, copy it and the paste it to the command line of your masternode server.

```
# get fetch-params.sh
wget https://github.com/CommerciumBlockchain/CommerciumContinuum/releases/download/v1.0.5/commercium_continuum-v1.0.5-linux.tar.gz
tar -zxvf commercium_continuum-v1.0.5-linux.tar.gz
rm commercium_continuum-v1.0.5-linux.tar.gz
./commercium_continuum-v1.0.5-linux/fetch-params.sh
rm -rf commercium_continuum-v1.0.5-linux
```

```
# get commercium-cli, commerciumd, commercium-tx
# install libgomp1
wget https://github.com/CommerciumBlockchain/Commercium/releases/download/v3.0.0/commercium-v3.tar.gz
tar zxvf commercium-v3.tar.gz
mv commercium-v3/* .
rmdir commercium-v3
rm commercium-v3.tar.gz
apt-get install libgomp1
```

```
cd
cat << 'EOF' > .selected_editor
# Generated by /usr/bin/select-editor
SELECTED_EDITOR="/usr/bin/vim.basic"
EOF
```

```
# make the swap file
fallocate -l 4G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
```

--------------------------------------------------------
At this point we need to get the masternodeprivkey from the wallet computer.
So back to the wallet computer.

--------------------------------------------------------

<hr>

## Step 4) Setup the wallet computer
Here we need masternodeprivkey for the next step.


# Create a new c-address

`./commercium-cli getnewaddress`
```
CeZ5jYCWN8kZ4nbj5MDrgq633M9dyjYtTm
```

# send 100000 CMM to that address

`./commercium-cli z_sendmany "CPmvbgTS4udzXB3nuyVA7Q8TV3Wfo9VQGb" "[{\"amount\": 100000, \"address\": \"CeZ5jYCWN8kZ4nbj5MDrgq633M9dyjYtTm\"}]"`

the command that you would really like is
1) find out how many CMM are in the utxos
2) using sendmany to send 1 to the destination address and the remainder back to the original address


# see what happened ...
./commercium-cli z_getoperationstatus

./commercium-cli masternode genkey
5hkApyTmikg8HR3crywMubpkeuz5iQTbTD7Rv2eCaWbBDGs3XRG
Call this number [MASTERGENKEY]

If you have only one MN, then this will give a single txhash number that you want to write down and keep.
If you have many, it can be a pain because you need to find the one that is new - and the command does not tell you. Best practice is to save all in a file and use that file to filter out the known ones to find the new unknown one.
========================================
========================================

./commercium-cli masternode outputs
e8e64abe0738aa8bd63314b43e984c824be96519b3f64f8c1e4193229bb0719b
Call this number [MNOUTPUT]

----------------------
if you have several mn you might want to try:
./commercium-cli masternode outputs >> file1.txt
then run masternode genkey
then
./commercium-cli masternode outputs >> file2.txt
then hopefully
diff file1.txt file2.txt will give the txaddr that is new.
Not a problem if you have one or two mn, but when you get a few, finding the new txaddr can be a pain!
======================




so to the file .commercium/masternode.conf we are going to append a line that looks like:
mn27 [IPADDRESS]:2019 [GENKEY] [MNOUTPUT] 0

mn27 157.245.98.61:2019 5uCa38wMuThgbpkebkApz5iQ2eyTmWbHR3cryvXBDTD7RGsikRG e4b29c738724bd63b6404c8b19b3e91e965314b48f68aee419323a8f8abe019b 0

./commercium-cli stop
./commciumd

And you should see that MN27 now has 0 CMM in it - these are now "hidden".

4) get a masternode key

./commercium-cli masternode genkey

NOTE: This masternode key will go into masternode.conf on the droplet
Call this number [MASTERGENKEY]

./commercium-cli masternode outputs
note: this might not be right!
e4b29c738724bd63b6404c8b19b3e91e965314b48f68aee419323a8f8abe019b

========================================
========================================

<hr>

## Step 5) Finish the MN server


5) get the wallet key.This will give txhash and outputidx. These go into the masternode.conf file



--- for curl to work ---
rpcuser=anyusername
rpcpassword=anypassword
rpcallowip=yourip <------ add this if you want to limit who can rpc into your mn
=======================

replace masternodeprivkey=[MASTERGENKEY] with the masterenode gen key from step 4

# fill the .commercium directory
mkdir .commercium
cd .commercium

cat << 'EOF' > commercium.conf
txindex=1
daemon=1
rpcuser=xUserx
rpcpassword=xPasswordx
rpcport=2020
port=2019
masternode=1
masternodeprivkey=5uCa38wMuThgbpkebkApz5iQ2eyTmWbHR3cryvXBDTD7RGsikRG
EOF

# make sure we start commercium on reboot
cat << 'EOF' > cmmstartup.sh
#!/bin/sh
sudo swapon /swapfile
~/commerciumd
EOF
chmod +x cmmstartup.sh
chown root:root *
chown root:root .*

<hr>

## Step 6) Wait Patiently

<hr>

## Step 7) Start MN on wallet computer


<hr>


-----------------------------------------------
-----------------------------------------------

--------------------------------------------------------
Step 5)
--------------------------------------------------------


000000000000000000000000000000000
4) get a masternode key

commercium-cli.exe masternode genkey

NOTE: This masternode key will go into masternode.conf
Call this number [MASTERGENKEY]

5) get the wallet key.This will give txhash and outputidx. These go into the masternode.conf file

commercium-cli.exe masternode outputs
chmod +x cmmstartup.sh
000000000000000000000000000000000
--------------------------------------------------------
cat << 'EOF' >> /var/spool/cron/crontabs/root
@reboot bash ~/cmmstartup.sh
EOF

========================================
========================================

--------------------------------------------------------
how to edit the file "properly"
crontab -e

Okay here you are going to have to edit the file. I use "vi".
Go to the end of the file type
:$
and hit return

type
$./commercium-cli startalias mn27
and hit return


type
a
and hit return

type or copy this line to the last line.
@reboot bash ~/cmmstartup.sh

hit the escape key. then type
:wq!
and hit return.

--------------------------------------------------------

then back on the computer with the coins and the wallet ... light this candle:

./commercium-cli startalias mn27



// on windows machine:
NOTE: Change the masternode.conf file so it has the new IP address. Restart cmm-qt-wallet v05.6

./commercium-cli startalias mn27

back on the VPS:
./commercium-cli masternode debug
Not capable masternode: Hot node, waiting for remote activation.
If you get this then on windows run: commercium-cli.exe startalias mn02
./commercium-cli masternode debug
Masternode successfully started
