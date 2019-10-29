@ECHO OFF
@setlocal enableextensions
@cd /d "%~dp0"

SET PGPATH=C:\"Program Files"\PostgreSQL\9.3\bin\
SET SVPATH=D:\"Aplikasi Akuntansi Hotel"\"Aplikasi Akuntansi 1.1"\backup\files\
SET PRJDB=acchotel
SET DBUSR=postgres
SET PGPASSWORD=postgres
FOR /F "TOKENS=1,2,3 DELIMS=/ " %%i IN ('DATE /T') DO SET d=%%i-%%j-%%k
FOR /F "TOKENS=1,2,3 DELIMS=: " %%i IN ('TIME /T') DO SET t=%%i%%j%%k

SET DBDUMP=%PRJDB%_%d%_%t%.sql
@ECHO OFF
%PGPATH%pg_dump -h localhost -p 5432 -U postgres %PRJDB% > %SVPATH%%DBDUMP%

echo Backup Taken Complete %SVPATH%%DBDUMP%