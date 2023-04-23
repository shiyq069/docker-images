DATE=`date +%Y-%m-%d`
echo "del arch log start $DATE" >> /home/oracle/backup_log
$ORACLE_HOME/bin/rman cmdfile $ORACLE_BASE/delarch.sh log=$ORACLE_BASE/oradata/backup/logs/log_rman_delarch_$DATE
