#!/bin/sh

mkdir /dev/cgroup
mount -t cgroup -o cpuset cpuset /dev/cgroup/
mkdir /dev/cgroup/vmft/
echo 7 > /dev/cgroup/vmft/cpuset.cpus
echo 1 > /dev/cgroup/vmft/cpuset.cpu_exclusive
echo 0 > /dev/cgroup/vmft/cpuset.mems
