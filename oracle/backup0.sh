connect target /
run
{
allocate channel d1 type disk;
backup incremental level 0 format "/opt/oracle/oradata/backup/orcl_full_%U" database include current controlfile;
delete noprompt obsolete device type disk;
sql 'alter system archive log current';
crosscheck backup;
delete noprompt expired backup;
release channel d1;
}

