@ECHO OFF
SET dbhost=127.0.0.1
SET dbuser=root
SET dbpasswd=123456
SET dbName=test
SET sqlpath=%~dp0
::���������Ա�֤.batͬ��Ŀ¼�µ�.sql�ļ��ܱ��ҵ���
SET sqlfile=dump.sql
::����Ҫִ��ִ��sql���ļ���

::����mysql��װ·����binĿ¼�£���������˻�����������Ҫ�����
::�����磺cd /d C:\Program Files\MySQL\MySQL Server 5.5\bin��
cd C:\software\mysql-5.7.23\bin

::ִ��SQL�ű�

mysqldump -h%dbhost% -u%dbuser% -p%dbpasswd% %dbName% > %sqlpath%%sqlfile% --default-character-set=utf8
::mysql -uroot -p123456
ECHO -----------------------------------------------------------------------------------------
ECHO ----------------------------------------Completed!---------------------------------------
PAUSE

@ECHO Done!