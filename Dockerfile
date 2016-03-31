FROM alpine:3.3
MAINTAINER iamfat@gmail.com

RUN apk update && apk add nginx && chown -R nginx:nginx /var/lib/nginx
ADD nginx.conf /etc/nginx

VOLUME ["/etc/nginx", "/var/log/nginx"]
EXPOSE 80

CMD ["/usr/sbin/nginx"]