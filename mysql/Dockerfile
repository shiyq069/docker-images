FROM mysql:5.7.34
ENV TZ Asia/Shanghai
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    cron && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
COPY docker-entrypoint.sh /usr/local/bin/
COPY backup.cron /backup.cron
COPY backup.sh /backup.sh
RUN \
    chmod 755 /usr/local/bin/docker-entrypoint.sh &&\
    chmod 755 /backup.cron &&\
    chmod 755 /backup.sh
ENTRYPOINT ["docker-entrypoint.sh"]

