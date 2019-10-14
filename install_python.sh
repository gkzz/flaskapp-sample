#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

WORKDIR=`pwd`

#cd && mkdir flaskapp && cd $_

#python3 -V
#Python 3.6.7


sudo apt install python-pip y
sudo apt-get install python3-venv -y
sudo apt-get install nginx -y

#sudo ls -la /etc/nginx/sites-enabled/
###defalut
#sudo touch /etc/nginx/sites-enabled/flaskapp

# inet\s+(([0-9]{1,3}\.){3}[0-9]{1,3})\/[0-9]{1,2}\s+brd\s+([0-9]{1,3}\.){3}[0-9]{1,3}\s+(scope)\s+(global)\s+(dynamic)\s+(eth0)

###server{
###    listen 80;
###    listen 8080;
###    server_name <ip4 public>;
###
###    location / {
###        proxy_pass http://127.0.0.1:8000;
###    }
###}


python3.6 -m venv 36 && source 36/bin/activate && cd 36
pip install flask
pip install gunicorn
cd $WORKDIR


# at, configuration page add inbound rules as security group
# SSH 22 0.0.0.0, ::/0  ###default
# HTTP 80 0.0.0.0, ::/0

#pip install -r $HOME/flaskapp/36/requirements.txt
#pip freeze > requirements.txt

#sudo service nginx restart
#sudo service nginx status
#gunicorn app:app
###<ip4 public>
###<ip4 public>:8080

# at, configuration page add inbound rules as security group
### SSH 22 0.0.0.0, ::/0  ###default
### HTTP 80 0.0.0.0, ::/0
### カスタム 8080 0.0.0.0, ::/0

#sudo systemctl daemon-reload
#sudo service gunicorn start
#sudo service nginx restart