#!/bin/bash
username=$(cat /opt/APRebootinator/user)
keyFile=/opt/APRebootinator/key
APs=(
	'changeme'
	'changeme'
	'changeme'
	)
for ap in ${APs[@]};
do
sshpass -f /opt/restartAP/pass ssh $username@$ap reboot
done
url='https://hooks.slack.com/services/YOURSLACK/WEBHOOK_URL'
emoji=":terminator:"
uname="AP REBOOTINATOR"
channel="#alerts"
message="ACCESS POINTS REBOOTED"
payload="payload={\"channel\": \"$channel\", \"username\": \"$uname\", \"icon_emoji\": \"$emoji\", \"text\": \"$message\"}"
curl -m 5 --data-urlencode "${payload}" $url
