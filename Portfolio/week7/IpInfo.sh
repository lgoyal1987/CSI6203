#!/bin/bash
#getting the information about networking from the ifconfig command
net="$(ifconfig)"
add=$(echo "$net" | sed -n '/inet / {
s/inet/IP Address:/
s/netmask/\n\t\tSubnet Mask:/
s/broadcast/\n\t\tBroadcast Address:/
p
}')
echo -e "IP address on this computer are:\n$add"