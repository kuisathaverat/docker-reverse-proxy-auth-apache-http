# Description

Docker container configured to be used as reverse proxy for a Jenkins instance and authenticate with the Reverse Proxy Auth Plugin.

# How to run it

Edit the `run.sh` file to set the IP of your Jenkins instance, also if you need you can change the DNS name `run.sh` and `conf/httpd.conf`, then you can execute the `run.sh`, it will remove the `apache httpd` docker container if it run, build a new version, and run it. After that, you can connect to the port 9090, Apache httpd will ask for user and password and it will redirect you to the Jenkins instance is the authentication success.

# Default users

In the file `conf/passwd` you have two users created `admin` and `user`, the password of both is the same username. 

