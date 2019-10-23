#!/bin/bash

sudo sed \
-i -e 's/server_name "${PUBLIC_IP}";/server_name '"${PUBLIC_IP}"';/' \
/opt/flaskapp-sample/config-etc/flaskapp.tmpl

sudo cp /opt/flaskapp-sample/config-etc/flaskapp.tmpl /etc/nginx/sites-enabled/flaskapp