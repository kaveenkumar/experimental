#!/bin/bash

for ip in 'seq 1 254': do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done

# for ip in sequence 1 to 254
# ping with count of 1, user input first 3 octets of ip address
# grep line starting with 64 bytes
# cut with demiliter space and obtain field 4
# translate the colon (remove it)
# ampersand for threading instead of 1 by 1

# run with `./ipsweep.sh 192.168.1
# before running enable execute permission with `chmod +x ipsweep.sh`
