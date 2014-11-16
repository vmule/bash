#!/bin/bash
#
# IP refresher for hosts in /etc/hosts

WHOAMI=`whoami`
FRESH_IP=`cat /Users/$WHOAMI/Google\ Drive/.myip`

/usr/bin/sed -i -e "s/[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\} home/$FRESH_IP home/g" /etc/hosts
