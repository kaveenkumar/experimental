#!/bin/bash

if [ "$1" == "" ]
then
echo "Please provide an IP address as reference"

else
for ip in 'seq 1 254'; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

# for ip in sequence 1 to 254
# ping with count of 1, user input first 3 octets of ip address
# grep line starting with 64 bytes
# cut with demiliter space and obtain field 4
# translate the colon (remove it)
# ampersand for threading instead of 1 by 1

# run with `./ipsweep.sh 192.168.1
# before running enable execute permission with `chmod +x ipsweep.sh`

# can be output to `./ipsweep.sh 192.168.1 > iplist.txt`
# and then
# `for ip in $(cat iplist.txt); do nmap -sS -p 80 -T4 $ip; done`
# for one ip at a time or for ips in parallel
# `for ip in $(cat iplist.txt); do nmap -sS -p 80 -T4 $ip & done`

# for ips in the iplist file run nmap with stealth scan on target ip port 80 with speed t4 all the ips
