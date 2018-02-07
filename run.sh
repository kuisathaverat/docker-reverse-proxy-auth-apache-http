#!/bin/sh
IP=$(ifconfig en0|awk '/inet / {print $2}')
docker stop reverse-apache2
docker rm reverse-apache2
docker build -t reverse-apache2 .
docker run -dit --name reverse-apache2 \
  --add-host jenkins.example.com:${IP} \
  -p 9090:80 \
  -v $(pwd)/conf:/usr/local/apache2/conf \
  reverse-apache2