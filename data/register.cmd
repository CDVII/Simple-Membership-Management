@echo off
set /p id=ID:
for /f "tokens=1 delims=," %%i in (data\member.txt) do (
	if %id%==%%i goto :fail
)
echo ��밡���� ���̵� �Դϴ�. 
set /p pw=PassWord:
echo %id%,%pw%,1,0 >> data\member.txt
data\menu %id% %pw% 1 0

:fail
echo �̹� �����ϴ� ���̵��Դϴ�.
start.cmd