connect target /
run
{
allocate channel d1 type disk;
backup incremental level 1 format '/opt/oracle/oradata/backup/orcl_level1_%U' database;
delete noprompt obsolete device type disk;
crosscheck backup;
delete noprompt expired backup;
release channel d1;
}
