# syntax=docker/dockerfile:1
#FROM node:12-alpine
FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR /app
COPY ./entryPoint.sh .
#RUN chmod +x entryPoint.sh && ./entryPoint.sh
#CMD ["/bin/sh", "/app/entryPoint.sh"]
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 8081

