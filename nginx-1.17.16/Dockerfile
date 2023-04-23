FROM lucksoft/nginx:1.0.1

COPY ./nginx-replace-env.sh /usr/src/app/nginx-replace-env.sh

RUN chmod a+x /usr/src/app/nginx-replace-env.sh

ENTRYPOINT ["/usr/src/app/nginx-replace-env.sh"]
