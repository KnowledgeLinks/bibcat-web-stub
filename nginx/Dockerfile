FROM nginx:stable
MAINTAINER Jeremy Nelson <jermnelson@gmail.com>
RUN rm /etc/nginx/conf.d/default.conf && \
    mkdir /etc/nginx/ssl
COPY app.conf /etc/nginx/conf.d/
COPY fullchain.pem /etc/nginx/ssl/
COPY privkey.pem /etc/nginx/ssl/
