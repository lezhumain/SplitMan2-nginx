# syntax=docker/dockerfile:1
#FROM node:12-alpine
FROM nginx:alpine
COPY ./nginx.conf.1 /etc/nginx/conf.d/default.conf
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 8081

