Docker Hub: genee/nginx
===========

Base on alpine:3.3

```
docker run -v path/to/log:/var/log/nginx -v path/to/conf.d:conf.d -v path/to/default.d:/etc/nginx/default.d -d genee/nginx
```