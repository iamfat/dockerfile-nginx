FROM ubuntu:14.04
MAINTAINER maintain@geneegroup.com

RUN apt-get update && apt-get install -y nginx-light && \
    echo 'daemon off;' >> /etc/nginx/nginx.conf

EXPOSE 80

CMD ["/usr/sbin/nginx"]