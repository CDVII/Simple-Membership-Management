@echo off
:start
echo 1:�α��� 2:ȸ������ 0:����
set /p select=����:

if %select%==1 data\login.cmd 

if %select%==2 data\register.cmd

if %select%==0 goto :EOF

echo ���� �����Դϴ�.
goto :start