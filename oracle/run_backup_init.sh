DATE=`date +%Y-%m-%d`
echo "backup init log start $DATE" >> /home/oracle/backup_log
$ORACLE_HOME/bin/rman cmdfile $ORACLE_BASE/backup_init.sh log=$ORACLE_BASE/oradata/backup/logs/log_rman_backup_init_$DATE
