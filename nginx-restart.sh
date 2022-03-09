#!/bin/bash
#This below command will get active status from nginx status and save it into a variable called NGINX.

NGINX=$( service nginx status | grep -wn 'active' | cut -d ':' -f3 | awk '{ print $1 }' )

#Now we will run a if statement to check whether Nginx running or not. 
 if [ $NGINX = "Active" ];
 then
      echo 'Nginx is working fine'
      exit 1
 else
       service nginx restart
 echo 'We have restarted the Nginx Processs'
 fi
