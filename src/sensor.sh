#!/bin/sh

# ipmi fan control script for Dell PowerEdge R210 II &  Dell PowerEdgre R720
# call with arguments  <ip_address> <user> <password> <maxtemp> <initial speed>
# requires ipmitool
# requires sendmail 
#
# call with absolute value
. ./fancontrol.lib

parse_cmdline

if [ "$?" -eq "0" ] || [ "$1" = "-h" ] || [ "$1" = "--h" ]
then
  usage
  return 1
fi

monitor
