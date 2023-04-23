#!/bin/bash

if [ "$ADMIN_NAME" == "" ]; then
  echo "ERROR - need set admin name"
  exit 1;
fi;

if [ "$ADMIN_PASSWD" == "" ]; then
  echo "ERROR - need set admin pass"
  exit 1;
fi;

htpasswd -b -c /etc/nginx/htpasswd $ADMIN_NAME $ADMIN_PASSWD

nginx

echo "nginx started"

CONTEXT_PATH=$(yml.pl /conf/config.yml registry.context_path)
CATALINA_OPTS="$CATALINA_OPTS -Dcontext.path=${REGISTRY_CONTEXT_PATH:-$CONTEXT_PATH}"
echo CATALINA_OPTS: $CATALINA_OPTS
exec catalina.sh run
