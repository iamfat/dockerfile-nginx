Docker Hub: iamfat/gini
===========

## Gini Environment (Gini + Composer + PHP5.5 + Nginx + SSH)
```bash
docker build -t iamfat/nginx nginx
docker run --name nginx --privileged \
    -v /dev/log:/dev/log -v /data:/data \
    -v /data/etc/nginx/sites-enabled:/etc/nginx/sites-enabled \
    -v /data/log/nginx:/var/log/nginx \
    --link gini:gini \
    -p 80:80 \
    -d iamfat/nginx
```