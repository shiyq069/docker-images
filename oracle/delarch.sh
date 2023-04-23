connect target /
run
{
allocate channel d2 type disk;
DELETE ARCHIVELOG ALL COMPLETED BEFORE 'SYSDATE-8';
release channel d2;
}
