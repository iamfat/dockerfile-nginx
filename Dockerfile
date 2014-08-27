FROM debian:7.6
MAINTAINER maintain@geneegroup.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y nginx-light && \
    echo 'daemon off;' >> /etc/nginx/nginx.conf

EXPOSE 80

CMD ["/usr/sbin/nginx"]