# fancontrol
Fan control/monitoring/alerting script for linux for DELL PowerEdge

## Works for
* PE R210II 
* PE R720

## Dependencies

* ipmitool
* sendmail

Probably best run with tmux or similar.

Could be enhanced with syslog capabilities.

## TODO
* Failsafe - revert to automatic fan control, when temperature reaches critical
* integrate heathcheck.io
* integrate slack
* other notifications

Please send me information if the script works with other DELL PowerEdge servers
