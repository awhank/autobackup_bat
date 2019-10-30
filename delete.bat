@echo off
SET SVPATH=D:\"Aplikasi Akuntansi Hotel"\"Aplikasi Akuntansi 1.1"\backup\files\
REM DIR /A-D /OD /B D:\"Aplikasi Akuntansi Hotel"\"Aplikasi Akuntansi 1.1"\backup\files\

for /f %%a in ('DIR %SVPATH%\*.sql /A-D /OD /B ') do (
    REM echo %%a
    set file=%%a
    goto hapus
)

:hapus
REM echo %file%
DEL %SVPATH%%file%