# syntax=docker/dockerfile:1
#FROM node:12-alpine
FROM nginx:alpine
COPY ./nginx.conf.1 /etc/nginx/conf.d/default.conf
COPY ./nginx.main.conf /etc/nginx/nginx.conf
COPY ./nginx.crt /etc/nginx/certificate/nginx-certificate.crt
COPY ./nginx.key /etc/nginx/certificate/nginx.key

RUN mkdir /app && touch /var/log/nginx/access.log
COPY ./run.sh /app/run.sh
RUN chmod +x /app/run.sh

#RUN /usr/sbin/nginx
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
#CMD ["/usr/sbin/nginx"]
#CMD ["tail", "-f", "/var/log/nginx/access.log"]

#CMD ["sh", "/app/run.sh"]

EXPOSE 443
