#!/bin/sh
# FIXME Make sure that remoteproc0 and remoteproc1 are in fact the PRUs!
# They seem to be on Debian Buster..
echo -n "PRU0 status: "
cat /sys/class/remoteproc/remoteproc0/state
echo -n "PRU1 status: "
cat /sys/class/remoteproc/remoteproc1/state
