#!/bin/sh
DATE=`date +%Y-%m-%d`
echo "backup 0 start $DATE" >> /home/oracle/backup_log
$ORACLE_HOME/bin/rman cmdfile $ORACLE_BASE/backup0.sh log=$ORACLE_BASE/oradata/backup/logs/log_rman_0_$DATE
