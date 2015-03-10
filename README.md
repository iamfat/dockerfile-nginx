Docker Hub: genee/nginx
===========

## Gini Environment (Gini + Composer + PHP5.5 + Nginx + SSH)
```bash
docker build -t iamfat/nginx nginx

export BASE_DIR=/mnt/sda1/data
docker run --name nginx --privileged \
    -v /dev/log:/dev/log -v $BASE_DIR:/data \
    -v $BASE_DIR/etc/nginx/sites-enabled:/etc/nginx/sites-enabled \
    -v $BASE_DIR/var/log/nginx:/var/log/nginx \
    --link gini-dev:gini-dev \
    -p 80:80 \
    -d iamfat/nginx
```
