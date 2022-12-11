#!/bin/bash

# Wait 5 minutes for network stack to init


# Add macvlan

# Create bridge, silent if it already exists
ip link add macvlan0 link bond0 type macvlan mode bridge > /dev/null 2>&1

#Wait again for network to intialize

ip addr add 192.168.1.200/27 dev macvlan0

# Start traffic
ip link set macvlan0 up
