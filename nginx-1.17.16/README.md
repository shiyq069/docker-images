# `1.0.2` luckyun微服务框架 前端运行环境

## 环境
- nginx/1.17.6

## 开放端口
- 80/443

## 支持自定义参数

| 参数  | 说明  |
| ------------ | ------------ |
|$APP_HOST|用于反向代理网关IP|
|$APP_PORT|用于反向代理网关端口|
|$AURL|用于反向代理URL|
|$BURL|用于反向代理URL|
|$CURL|用于反向代理URL|
|$DURL|用于反向代理URL|
|$EURL|用于反向代理URL|
|$FURL|用于反向代理URL|
|$GURL|用于反向代理URL|
|$HURL|用于反向代理URL|
|$IURL|用于反向代理URL|
|$JURL|用于反向代理URL|


使用简单的Dockerfile：

```bash
FROM lucksoft/nginx:1.0.2
COPY nginx.conf /etc/nginx/nginx.conf
#COPY nginx-ssl.conf /etc/nginx/conf.d/nginx-ssl.conf
ENTRYPOINT ["/usr/src/app/nginx-replace-env.sh"]
```

- 示例：

`Dockerfile`
```
    FROM lucksoft/nginx:1.0.2

    WORKDIR /usr/src/app/

    #COPY ./docker/nginx-ssl.conf /etc/nginx/conf.d/nginx-ssl.conf

    COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

    COPY ./dist  /usr/share/nginx/html/

    #EXPOSE 443

    EXPOSE 80

    ENTRYPOINT ["/usr/src/app/nginx-replace-env.sh"]

```

`nginx.conf`
```
    location / {
        try_files $uri $uri/ /index.html;
    }
    location /api/ {
        proxy_pass http://$APP_HOST:$APP_PORT/;
        proxy_set_header    Host             $host;
        proxy_set_header    X-Real-IP        $remote_addr;
        proxy_set_header    X-Forwarded-For  $proxy_add_x_forwarded_for;
        proxy_set_header    HTTP_X_FORWARDED_FOR $remote_addr;
        proxy_redirect      default;
    }
    location /DEMOApi/ {
        proxy_pass http://$AURL/;
        proxy_set_header    Host             $host;
        proxy_set_header    X-Real-IP        $remote_addr;
        proxy_set_header    X-Forwarded-For  $proxy_add_x_forwarded_for;
        proxy_set_header    HTTP_X_FORWARDED_FOR $remote_addr;
        proxy_redirect      default;
    }
```

```
docker run --name lucksoft-nginx-demo --privileged -p 30216:80 \
-e APP_HOST=172.16.51.6 \
-e APP_PORT=30300 \
-e AURL=172.16.60.220:9091 \
-d 镜像

```


# `1.0.1` luckyun微服务2.0框架 前端运行环境

## 环境
- nginx/1.17.6

## 开放端口
- 80/443

## 支持自定义参数
- $APP_HOST  用于反向代理网关IP
- $APP_PORT  用于反向代理网关端口

使用简单的Dockerfile：

```bash
FROM lucksoft/nginx:1.0.1
COPY nginx.conf /etc/nginx/nginx.conf
#COPY nginx-ssl.conf /etc/nginx/conf.d/nginx-ssl.conf
ENTRYPOINT ["/usr/src/app/nginx-replace-env.sh"]
```
