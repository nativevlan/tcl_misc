$mail_server
$user
$domain



event manager applet interface_ShutdownGi1024
event syslog pattern .*Interface.*Ethernet[0-9]\/[0-9].*administratively.*
action 1.010 cli command "enable"
action 1.015 cli command "config t"
action 2.000 cli command "interface gi 1/0/24"
action 2.005 cli command "no shutdown"
action 3.000 cli command "end"
action 3.005 cli command "sh users | i vty"
action 3.006 cli command "sh ip eigrp neighbors"
action 4.005 info type syslog history
action 5.000 info type routername
action 6.005 cli command "tclsh"
action 6.010 cli command "source flash:/test.0.0.1.tcl"
action 8.000 mail server "$mail_server" to "$user@$domain.com" from "$_info_routername@$domain.com" subject "$_info_routername INTERFACE SHUT DOWN" body "$_cli_result \n router name is $var_test"
