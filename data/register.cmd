@echo off
set /p id=ID:
for /f "tokens=1 delims=," %%i in (data\member.txt) do (
	if %id%==%%i goto :fail
)
echo 사용가능한 아이디 입니다. 
set /p pw=PassWord:
echo %id%,%pw%,1,0 >> data\member.txt
data\menu %id% %pw% 1 0

:fail
echo 이미 존재하는 아이디입니다.
start.cmd