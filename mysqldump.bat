@ECHO OFF
SET dbhost=127.0.0.1
SET dbuser=root
SET dbpasswd=123456
SET dbName=test
SET sqlpath=%~dp0
::（此语句可以保证.bat同级目录下的.sql文件能被找到）
SET sqlfile=dump.sql
::（需要执行执行sql的文件）

::进入mysql安装路径的bin目录下，如果配置了环境变量则不需要此语句
::（例如：cd /d C:\Program Files\MySQL\MySQL Server 5.5\bin）
cd C:\software\mysql-5.7.23\bin

::执行SQL脚本

mysqldump -h%dbhost% -u%dbuser% -p%dbpasswd% %dbName% > %sqlpath%%sqlfile% --default-character-set=utf8
::mysql -uroot -p123456
ECHO -----------------------------------------------------------------------------------------
ECHO ----------------------------------------Completed!---------------------------------------
PAUSE

@ECHO Done!