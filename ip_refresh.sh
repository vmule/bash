#!/bin/bash
#
# IP refresher for hosts in /etc/hosts
# This will match a line like this: '192.168.1.1 home' and update the IP address
# with the IP in the file /Users/$WHOAMI/Google\ Drive/.myip

WHOAMI=`whoami`
FRESH_IP=`cat /Users/$WHOAMI/Google\ Drive/.myip`

/usr/bin/sed -i -e "s/[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\} home/$FRESH_IP home/g" /etc/hosts
