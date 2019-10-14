# My Sample Flask Project
**This Project is created because I would like to learn how Flask works.**

<img src="/demo/flaskapp-demo.gif" alt="Demo to run flask with nginx and gunicorn" style="max-width:100%;">

# Table of Contents
- Technologies Used
- How to setup
- Notes
- Sources


# Technologies Used
- Python 3.6.7
- Flask 1.0.2
- gunicorn 19.9.0
- nginx 1.14.0
- Jinja2 2.10.3
- ec2, vpc (aws)

# How to setup

```
$ sudo apt-get update -y
#cd && mkdir flaskapp-sample && cd $_
$ source install.sh
$ sudo cp ./config-etc/flaskapp.tmpl /etc/nginx/sites-enabled/flaskapp
$ sudo cp ./config-etc/gunicorn.service.tmpl /etc/systemd/system/gunicorn.service
$ sudo systemctl daemon-reload
$ sudo service gunicorn start
$ sudo service nginx restart
```

# Notes

```
ubuntu@xxxxxx:~$ cat /etc/os-release
NAME="Ubuntu"
VERSION="18.04.2 LTS (Bionic Beaver)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 18.04.2 LTS"
VERSION_ID="18.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=bionic
UBUNTU_CODENAME=bionic

```

# Sources
- [Create flask app & configure nginx - Deploy Flask application on EC2 p.4](https://www.youtube.com/watch?v=tW6jtOOGVJI&t=16s)
- [Deploy Flask app & security groups - Deploy Flask application on EC2 p.5](https://www.youtube.com/watch?v=Dx4Gb4TbCGs&t=3s)
- [Create Gunicorn as a Service - Deploy Flask application on EC2 p.6](https://www.youtube.com/watch?v=jVq7cU_5-O4)

