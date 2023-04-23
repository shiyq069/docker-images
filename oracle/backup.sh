#!/bin/sh

echo ---------------start backup service------------------

echo 'gen backup dir'
BACKUP_DIR=$ORACLE_BASE/oradata/backup
if [ ! -d $BACKUP_DIR ];then
  mkdir $BACKUP_DIR
fi

echo 'gen backup log dir'
BACKUP_LOG_DIR=$BACKUP_DIR/logs
if [ ! -d $BACKUP_LOG_DIR ];then
  mkdir $BACKUP_LOG_DIR
fi

printenv | sed 's/^\(.*\)$/export \1/g' > $HOME/project_env.sh
sudo crond start
echo "59 23 * * 6 . $HOME/project_env.sh;$ORACLE_BASE/run_backup0.sh" > backup.cron
echo "59 23 * * 0-5 . $HOME/project_env.sh;$ORACLE_BASE/run_backup1.sh" >> backup.cron
echo "59 23 * * * . $HOME/project_env.sh;$ORACLE_BASE/run_delarch.sh" >> backup.cron
sudo crontab backup.cron

# crond status

echo ---------------start backup service success----------
