FROM nginx:stable
MAINTAINER Jeremy Nelson <jermnelson@gmail.com>
RUN rm /etc/nginx/conf.d/default.conf && \
    mkdir /etc/nginx/ssl
COPY app.conf /etc/nginx/conf.d/
