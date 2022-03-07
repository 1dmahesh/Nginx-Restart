#!/bin/bash

 NGINX=$( service nginx status | grep -wn 'active' | cut -d ':' -f2 )
 sleep 2s

 if [ $NGINX = "Active" ];
      then
         echo 'Nginx is working fine'
         exit 1
 else
       service nginx restart
 echo 'We have restarted the Nginx Processs'
 fi
