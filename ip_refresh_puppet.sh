#!/bin/bash
#
# IP refresher for hosts in /etc/hosts using Puppet DSL

IP=`cat /tmp/.myip`

/usr/bin/puppet resource host home ip=$IP
