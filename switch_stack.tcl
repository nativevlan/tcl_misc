$mail_server
$user
$domain



event manager applet switch.change.0.0.1
event syslog pattern "%STACKMGR-4-SWITCH_REMOVED: Switch  has been REMOVED from the stack ("
action 3.005 cli command "sh switch detail"
action 4.005 info type syslog history
action 5.000 info type routername
action 8.000 mail server "$mail_server" to "$user@$domain.com" from "$_info_routername@$domain.com" subject "$_info_routername SWITCH STACK CHANGE" body "$_cli_result \n test test \n router name is $_info_routername"




event manager applet switch.change.2960.0.0.1
event syslog pattern "%STACKMGR-4-SWITCH_REMOVED:"
action 3.005 cli command "sh switch detail"
action 4.005 info type syslog history
action 5.000 info type routername
action 6.000 
 action 8.000 mail server "$mail_server" to "$user@$domain.com" from "$_info_routername@$domain.com" subject "$_info_routername SWITCH STACK CHANGE" body "$_cli_result \n test test \n router name is $_info_routername"
