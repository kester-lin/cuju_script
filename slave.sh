#!/bin/sh

sudo \
    ~/wks/Cuju/x86_64-softmmu/qemu-system-x86_64 \
    -drive if=none,id=drive0,cache=none,format=raw,file=/home/ft/nfs/Ubuntu20G-1604.img \
    -device virtio-blk,drive=drive0,scsi=off \
    -m 512M -enable-kvm \
    -net tap,ifname=tap1 -net nic,model=virtio,vlan=0,macaddr=ae:ae:02:00:00:25 \
    -vga std \
    -chardev socket,id=mon,path=/tmp/vm1r.monitor,server,nowait \
    -mon chardev=mon,id=monitor,mode=readline \
    -incoming tcp:0:4441,ft_mode \
    -vnc 127.0.0.1:3

    #gdb -ex 'set confirm off' --args \
    #./Cuju/x86_64-softmmu/qemu-system-x86_64 \
    #-drive if=none,id=drive0,cache=none,format=raw,file=/home/ft/new/Ubuntu20G-1604.img \
    #~/chiyun-ft/x86_64-softmmu/qemu-system-x86_64 \
    #-ft-join-port 5004 \
    #-net tap,ifname=tap1 -net nic,model=virtio,vlan=0,macaddr=ae:ae:00:00:00:25 \
    #-netdev tap,id=tap1,vhost=off \
    #-device virtio-net-pci,id=net-pci0,netdev=tap1 \
