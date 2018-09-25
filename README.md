# APRebootinator

Every 60 days or so, our access points need to be rebooted. 

This script uses `sshpass` for non-interactive SSH. Make sure that's installed. I have the script installed in `/opt/APRebootinator/`. Create `/opt/APRebootinator/pass` containing the password of the user you're SSHing with. Make sure it has `0600` permissions with the user running the script as the owner.

Create `/opt/APRebootinator/user` containing the username of the SSH user. I don't care what permissions you put on it. You're an adult. Probably `0660` but that's just me.

After the script runs, it sends a Slack notification. Make sure you create an incoming webhook and add that to the script. Or fork it and use Twilio. Or email. Live your best life.

I have this running as a `5 4 1 */2 *` cron.
