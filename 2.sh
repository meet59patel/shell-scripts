#!/bin/sh
# This script takes PMM Version as input command line argument
# and executes commands accordingly

if test $1 == "dev-latest"
then
    eval docker pull perconalab/pmm-server:dev-latest
else
    eval docker pull percona/pmm-server:$1
fi