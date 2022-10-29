#!/bin/bash

mv /etc/nginx/http.d/default.conf /etc/nginx/http.d/default.conf.bk
cat << EOF | tee -a /etc/nginx/http.d/default.conf
$(cat nginx.conf)
EOF
echo "Nginx set up."

#/usr/sbin/nginx  
#echo "Nginx started"

