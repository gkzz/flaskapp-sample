#!/bin/bash

function main () {
  total=0
  for v in $1 $2
  do
    if pgrep -x "$v" >/dev/null
    then 
      total=$(( total += 1 ))
    fi
  done

  if [ ${total}==2 ]; then
      exit 0
      #true
  else
      exit 1
      #false
  fi
}


sudo systemctl daemon-reload
sudo service gunicorn restart
sudo service nginx restart

main "nginx" "gunicorn"
