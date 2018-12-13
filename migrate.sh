#!/bin/sh

sudo echo "migrate_set_capability cuju-ft on" | sudo nc -U /tmp/vm1.monitor
sudo echo "migrate -d -c tcp:127.0.0.1:4441," | sudo nc -U /tmp/vm1.monitor

#sudo echo "migrate -d -c tcp:192.168.126.20:4441," | sudo nc -U /tmp/vm1.monitor
