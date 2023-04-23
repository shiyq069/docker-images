#!/bin/sh
cp -vnpr /etc/nginx/conf.d/* /data/nginx
nginx
exec "$@"

