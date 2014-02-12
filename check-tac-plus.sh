#!/usr/local/bin/bash
#
# This is a simple script that checks to see if the tacacs daemon is running
# If the daemon dies, a mail is sent to the relevant mailbox 
#
# Start script
#

while [ true ]; do

   for i in `netstat -an | grep '.*49' | egrep 'LISTEN' | wc -l`; do
           if [ $i -ne 1 ];
           then
              echo -ne 'Please check on the tac_plus daemon.' | mail -s 'Tacacs Daemon - The Tacacs Daemon has stopped running!' mailbox@yourdomain.com
           fi
   done;

 sleep 30;

done;

# End script
