#!/bin/sh

# These udev rules create links to the PRUs so we don't confuse them with the M3 wakeup core.
# /etc/udev/rules.d/86-remoteproc-noroot.rules
PRU0=/dev/remoteproc/pruss-core0
PRU1=/dev/remoteproc/pruss-core1
#PRU0=/sys/class/remoteproc/remoteproc0
#PRU1=/sys/class/remoteproc/remoteproc1

echo -n "PRU0 ($PRU0) status: "
cat $PRU0/state
echo -n "PRU1 ($PRU1) status: "
cat $PRU1/state
