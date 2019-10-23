#!/bin/bash

function main () {
  total=0
  for v in $1 $2
  do
    if echo ${v} > /dev/null 2>&1; then 
      total=$(( total += 1 ))
    fi
  done

  if [ ${total}==2 ]; then
      echo $3 
      #true
  else
      echo $4
      #false
  fi
}


sudo systemctl daemon-reload
sudo service gunicorn restart
sudo service nginx restart



DAEMON_ACTIVE=`service gunicorn status | grep running`
NGINX_ACTIVE=`service nginx status | grep running`
main DAEMON_ACTIVE NGINX_ACTIVE "Successful" "FAILED"
