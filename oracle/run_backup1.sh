#!/bin/sh
DATE=`date +%Y-%m-%d`
echo "backup 1 start $DATE" >> /home/oracle/backup_log
$ORACLE_HOME/bin/rman cmdfile $ORACLE_BASE/backup1.sh log=$ORACLE_BASE/oradata/backup/logs/log_rman_1_$DATE
