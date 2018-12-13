#!/bin/sh

/usr/sbin/openvpn --mktun --dev tap0 --user `id -un`
#ip tuntap add tap0 mode tap
ifconfig tap0 promisc up
brctl addif br0 tap0

/usr/sbin/openvpn --mktun --dev tap1 --user `id -un`
#ip tuntap add tap1 mode tap
ifconfig tap1 promisc up
brctl addif br0 tap1

