# syntax=docker/dockerfile:1
#FROM node:12-alpine
FROM nginx:alpine
COPY ./nginx.conf.1 /etc/nginx/conf.d/default.conf
COPY ./nginx.crt /etc/nginx/certificate/nginx-certificate.crt
COPY ./nginx.key /etc/nginx/certificate/nginx.key
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 8081

