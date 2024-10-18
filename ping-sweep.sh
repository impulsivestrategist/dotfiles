#! /usr/bin/env bash

# equivalent to nmap -sn in a /24 subnet size

touch octets.txt
echo "Enter subnet"
read SUBNET 

for IP in $(seq 1 254); do
	ping -c 1 $SUBNET.$IP | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" > $HOME/octets.txt &
done

sleep 1
sudo nmap -sS --top-ports 20 -iL $HOME/octets.txt
cat octets.txt
