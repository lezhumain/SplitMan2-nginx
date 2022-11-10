#! /bin/bash

#RUN /usr/sbin/nginx
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
#CMD ["/usr/sbin/nginx"]
#CMD ["tail", "-f", "/var/log/nginx/access.log"]

#/usr/sbin/nginx
#tail -f /var/log/nginx/access.log
/usr/sbin/nginx -g deamon off;
