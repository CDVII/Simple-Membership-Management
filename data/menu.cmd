@echo off
echo �ȳ��ϼ���. %1��! ����� ������ %3, �������� %4 �Դϴ�.
:start
echo 8:�α׾ƿ� 9:ȸ��Ż�� 0:����
set /p select=����:

if %select%==8 echo ���������� �α׾ƿ� �Ǿ����ϴ�. & start.cmd

if %select%==9 data\unregister.cmd %1 %2 %3 %4

if %select%==0 exit

echo ���� �����Դϴ�.
goto :start