#!/bin/bash
hosts=$APP_HOST
ports=$APP_PORT
defaultPath="/etc/nginx/conf.d/default.conf"
sslPath="/etc/nginx/conf.d/nginx-ssl.conf"
if [ ! -z "$hosts" ] && [ ! -z "$ports" ]; then
        needReHostChar="\$APP_HOST"
        needRePortChar="\$APP_PORT"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReHostChar|$hosts|g" $defaultPath
                sed -i "s|$needRePortChar|$ports|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReHostChar|$hosts|g" $sslPath
                sed -i "s|$needRePortChar|$ports|g" $sslPath
        fi
fi
nginx -g 'daemon off;'