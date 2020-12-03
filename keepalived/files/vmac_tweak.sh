#!/bin/sh

# Tweak global ARP handling. All of these default to 0
sysctl -qw net.ipv4.conf.all.arp_ignore=1
sysctl -qw net.ipv4.conf.all.arp_announce=1
sysctl -qw net.ipv4.conf.all.arp_filter=0

# Alter eth1 behavior
sysctl -qw net.ipv4.conf.eth1.arp_filter=1

# Finally configure the virtual network adapter
sysctl -qw "net.ipv4.conf.$1.arp_filter=0"
sysctl -qw "net.ipv4.conf.$1.accept_local=1"
