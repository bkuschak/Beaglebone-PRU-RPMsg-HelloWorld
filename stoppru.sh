#!/bin/sh
# FIXME Make sure that remoteproc0 and remoteproc1 are in fact the PRUs!
# They seem to be on Debian Buster..
sudo sh -c "echo stop > /sys/class/remoteproc/remoteproc0/state"
sudo sh -c "echo stop > /sys/class/remoteproc/remoteproc1/state"
