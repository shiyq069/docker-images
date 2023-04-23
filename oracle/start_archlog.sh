#!/bin/sh
echo '------start arch log mode-----------'
sqlplus -s /nolog << EOF
CONNECT / as sysdba;

whenever sqlerror exit sql.sqlcode;
set echo off 
set heading off

ALTER DATABASE ADD SUPPLEMENTAL LOG DATA;
ALTER DATABASE FORCE LOGGING;
shutdown immediate;
startup mount;

alter database archivelog;
alter database open;
alter system set enable_goldengate_replication=true;

exit;
EOF 
echo '------start arch log mode success------'

