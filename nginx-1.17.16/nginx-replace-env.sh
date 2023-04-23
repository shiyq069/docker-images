#!/bin/bash
hosts=$APP_HOST
ports=$APP_PORT
aurl=$AURL
burl=$BURL
curl=$CURL
durl=$DURL
eurl=$EURL
furl=$FURL
gurl=$GURL
hurl=$HURL
iurl=$IURL
Jurl=$JURL
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
if [ ! -z "$aurl" ] ; then
        needReURLChar="\$AURL"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReURLChar|$aurl|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReURLChar|$aurl|g" $sslPath
        fi
fi
if [ ! -z "$burl" ] ; then
        needReURLChar="\$BURL"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReURLChar|$burl|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReURLChar|$burl|g" $sslPath
        fi
fi
if [ ! -z "$curl" ] ; then
        needReURLChar="\$CURL"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReURLChar|$curl|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReURLChar|$curl|g" $sslPath
        fi
fi
if [ ! -z "$durl" ] ; then
        needReURLChar="\$DURL"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReURLChar|$durl|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReURLChar|$durl|g" $sslPath
        fi
fi
if [ ! -z "$eurl" ] ; then
        needReURLChar="\$EURL"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReURLChar|$eurl|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReURLChar|$eurl|g" $sslPath
        fi
fi
if [ ! -z "$furl" ] ; then
        needReURLChar="\$FURL"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReURLChar|$furl|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReURLChar|$furl|g" $sslPath
        fi
fi
if [ ! -z "$gurl" ] ; then
        needReURLChar="\$GURL"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReURLChar|$gurl|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReURLChar|$gurl|g" $sslPath
        fi
fi
if [ ! -z "$hurl" ] ; then
        needReURLChar="\$HURL"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReURLChar|$hurl|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReURLChar|$hurl|g" $sslPath
        fi
fi
if [ ! -z "$iurl" ] ; then
        needReURLChar="\$IURL"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReURLChar|$iurl|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReURLChar|$iurl|g" $sslPath
        fi
fi
if [ ! -z "$jurl" ] ; then
        needReURLChar="\$JURL"
        if [ -f "$defaultPath"  ]; then
                sed -i "s|$needReURLChar|$jurl|g" $defaultPath
        fi
        if [ -f "$sslPath" ]; then
                sed -i "s|$needReURLChar|$jurl|g" $sslPath
        fi
fi
nginx -g 'daemon off;'
