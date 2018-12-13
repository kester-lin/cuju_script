#!/bin/sh

cd /home/ft/wks/Cuju/kvm
lsmod | grep kvm
sudo rmmod kvm_intel
sudo rmmod kvm
pwd
sudo insmod ./x86/kvm.ko
sudo insmod ./x86/kvm-intel.ko
lsmod | grep kvm

