#!/bin/sh

# ipmi fan control script for Dell PowerEdge R210 II &  Dell PowerEdgre R720
# call with arguments  <ip_address> <user> <password> <maxtemp> <initialspeed> <email_address>
# requires ipmitool
# requires sendmail 
#
# call with absolute value for initial speed, i.e. 10 = ~16%
. ./fancontrol.lib

parse_cmdline $@

if [ "$?" -eq "0" ] 
then
  usage
  return 1
fi

monitor
